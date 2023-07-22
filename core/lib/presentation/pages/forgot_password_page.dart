import 'package:core/presentation/pages/otp_page.dart';
import 'package:core/presentation/widgets/custom_button.dart';
import 'package:core/styles/size_config.dart';
import 'package:core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      iconSize: 15,
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffF7F7F9)),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text(
                            "Forgot Password",
                            style: kHeading3,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Enter your Email account to reset your password",
                            style: kSubtitle,
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextField(
                      obscureText: true,
                      style: const TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                          hintText: "********",
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 20,
                          ),
                          fillColor: const Color(0xffF7F7F9),
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none)),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    CustomButton(
                      text: "Reset Password",
                      callback: () async {
                        await showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => Center(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                              ),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 30),
                              width: double.infinity,
                              height: 215,
                              child: Column(
                                children: [
                                  Image.asset("assets/msg.png"),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  DefaultTextStyle(
                                    style: kHeading4.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    child: const Text(
                                      "Check Your Email",
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  DefaultTextStyle(
                                    style:
                                        kSubtitle.copyWith(color: Colors.black),
                                    child: const Text(
                                      "We have send password recovery code in your email",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OTPPage(),
                            ));
                      },
                      color: const Color(0xff0D6EFD),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
