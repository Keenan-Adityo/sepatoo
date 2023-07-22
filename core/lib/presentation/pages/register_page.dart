import 'package:core/presentation/pages/forgot_password_page.dart';
import 'package:core/presentation/pages/home_page.dart';
import 'package:core/presentation/widgets/custom_button.dart';
import 'package:core/presentation/widgets/onboarding_button.dart';
import 'package:core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    iconSize: 15,
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xffF7F7F9)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                          "Register Account",
                          style: kHeading3,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Fill your details or continue with social media",
                          style: kSubtitle,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Your Name",
                    style: kHeading4,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextField(
                    style: const TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                        hintText: "XXXXXXXXXX",
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 20,
                        ),
                        fillColor: Color(0xffF7F7F9),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none)),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Email Address",
                    style: kHeading4,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextField(
                    style: const TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                        hintText: "loremipsum@gmail.com",
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 20,
                        ),
                        fillColor: Color(0xffF7F7F9),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Password",
                    style: kHeading4,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextField(
                    obscureText: true,
                    style: const TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.remove_red_eye_outlined)),
                        hintText: "********",
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 20,
                        ),
                        fillColor: Color(0xffF7F7F9),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none)),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CustomButton(
                    text: "Sign Up",
                    callback: () async {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPasswordPage(),
                          ));
                    },
                    color: Color(0xff0D6EFD),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  OnBoardingButton(
                    text: "Google",
                    callback: () {},
                    color: Color(0xffF7F7F9),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 47),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Have Account? ",
                    style: kHeading4,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Log In",
                      style: kHeading4.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}