import 'package:clover/screens/authentication/login.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "The Marketplace\nfor the Future",
          body:
              "Clover is a platform that allows you to buy and sell goods in a decentralized environment.",
          image: Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Center(
                child: Image.asset('assets/images/on_boarding_logo_1.png',
                    width: 200.0)),
          ),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: "The Security\nof the Blockchain",
          body:
              "Clover uses bloackchain technology to ensure that your transactions are secure and private.",
          image: Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Center(
                child: Image.asset('assets/images/on_boarding_logo_2.png',
                    width: 200.0)),
          ),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: "The Power of\nCrypto Currencies",
          body:
              "Use Crypto Currencies to buy and sell goods on the Clover Marketplace.",
          image: Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Center(
                child: Image.asset('assets/images/on_boarding_logo_3.png',
                    width: 200.0)),
          ),
          decoration: getPageDecoration(),
        ),
      ],
      onDone: () async {
        final prefs = await SharedPreferences.getInstance();
        prefs.setBool('seen', true);
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => const Login()),
        );
      },
      next: const Icon(
        Icons.arrow_forward,
        color: Colors.black,
      ),
      done: const Text("Done",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
      curve: Curves.fastLinearToSlowEaseIn,
      globalBackgroundColor: Colors.white,
      dotsDecorator: const DotsDecorator(
        activeColor: Colors.black,
        size: Size(10.0, 10.0),
        color: Color.fromARGB(255, 199, 198, 198),
        activeSize: Size(22.0, 10.0),
        // activeShape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(25.0),
        // ),
      ),
    );
  }

  PageDecoration getPageDecoration() {
    return PageDecoration(
      titleTextStyle:
          const TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: TextStyle(fontSize: 19.0, color: Colors.grey.shade600),
      // descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
  }
}
