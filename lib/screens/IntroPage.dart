import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //yaha pe logo aayega
          Padding(
            padding: EdgeInsets.all(80.0),
            child: Image.asset('lib/assets/avacado.png'),
          ),

          //uske badh yaha pe text aayega
          Text(
            'We deliver the best groceries in town',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],

      ),
    );
  }
}
