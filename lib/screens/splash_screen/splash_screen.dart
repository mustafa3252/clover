import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/clover_logo.png"),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Clover",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ),
          ]),
    );
  }
}
