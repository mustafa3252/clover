import 'package:flutter/material.dart';

// import '../authentication/login.dart';
import '../on_boarding/on_boarding_screen.dart';
import '../product_page.dart';

class SplashScreen extends StatefulWidget {
  final bool seen;

  const SplashScreen({Key? key, required this.seen}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Widget showHome;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (widget.seen) {
        showHome = const ProductPage();
      } else {
        showHome = const OnBoardingScreen();
      }
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => showHome));
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Hero(
            tag: 'logo',
            child: Image.asset("assets/images/clover_gif.gif",
                width: width / 1.5)),
      ),
    );
  }
}
