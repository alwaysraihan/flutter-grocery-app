import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        // logo
        Padding(
          padding:
              const EdgeInsets.only(left: 80.0, right: 40, bottom: 80, top: 16),
          child: Image.asset('lib/images/avocado.png'),
        ),
        //we deli  ver groceries at your doorstep
        const Padding(
          padding: EdgeInsets.all(24.0),
          child: Text(
            'We deliver your groceries to your doorstep',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.normal,
            ),
          ),
        )
      ]),
    );
  }
}
