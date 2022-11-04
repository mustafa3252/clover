import 'package:clover/components/test_component.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    redirect();
  }

  void redirect(){
    Future.delayed(const Duration(seconds: 3)).then((value){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const TestComponent()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("assets/images/clover_gif.gif", width: width / 1.5),
      ),
    );
  }
}
