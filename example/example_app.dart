import 'package:flutter/material.dart';
import 'package:neumorphic_widget/neumorphic_button.dart';
import 'package:neumorphic_widget/neumorphic_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.grey[300],
      ),
      home: const Scaffold(body: NeumorphicApp()),
    );
  }
}

class NeumorphicApp extends StatelessWidget {
  const NeumorphicApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _radius = BorderRadius.circular(15);
    String _imgUrl = 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg';

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 30,
          ),
          NeumorphicCard(
            child: ClipRRect(
              borderRadius: _radius,
              child: Image.network(_imgUrl),
            ),
            shadowBlur: 13,
            borderRadius: _radius,
            backgroundColor: Colors.grey[300]!,
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 200,
            child: NeumorphicButton(
              borderRadius: _radius,
              child: Text('Click Me'),
              height: 30,
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Hello Neumorphism!'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
