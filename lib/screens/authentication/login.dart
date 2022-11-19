import 'package:clover/components/custom_text_field.dart';
import 'package:clover/components/password_text_field.dart';
import 'package:clover/constants.dart';
import 'package:clover/helpers/encryption.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool secureText = true;

  void signin() {
    print(emailController.text);
    final ep = Encryption().encrypt(passwordController.text);
    print(ep);
    final dp = Encryption().decrypt(ep);
    print(dp);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SizedBox(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32),
                    child: Hero(
                      tag: 'logo',
                      child: Image.asset(
                        'assets/images/clover_img_rect.png',
                        width: width / 2,
                      ),
                    ),
                  ),
                  CustomTextField(
                    hintText: 'email',
                    controller: emailController,
                  ),
                  PasswordTextField(
                      controller: passwordController,
                      onTapIcon: () {
                        setState(() {
                          secureText = !secureText;
                        });
                      },
                      secureText: secureText),
                  GestureDetector(
                    onTap: () {
                      signin();
                    },
                    child: Container(
                      height: width / 6,
                      width: width,
                      margin: const EdgeInsets.all(16),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: primaryButtonColor),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                            color: secondaryTextColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot the Password?',
                      style: TextStyle(
                          color: secondaryButtonColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text("Don't have an account?",
                      style: TextStyle(color: tertiaryTextColor)),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            color: primaryButtonColor,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
