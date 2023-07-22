import 'package:core/presentation/pages/on_boarding2.dart';
import 'package:core/presentation/widgets/onboarding_button.dart';
import 'package:core/styles/size_config.dart';
import 'package:core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: const Color(0xff1483C2),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              width: SizeConfig.screenWidth,
              top: 106,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset("assets/background/Highlight_05.png"),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 18,
                          right: 18,
                          top: 15,
                        ),
                        child: Text(
                          "WELLCOME TO",
                          style: kHeading1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "NIKE",
                    style: kHeading1,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  Image.asset("assets/background/ob1_1.png")
                ],
              ),
            ),
            Positioned(
              top: 102,
              width: SizeConfig.screenWidth,
              child:
                  Image.asset("assets/background/ob1_3.png", fit: BoxFit.cover),
            ),
            Positioned(
              top: 571,
              width: SizeConfig.screenWidth,
              child: Image.asset(
                "assets/background/ob1_4.png",
                alignment: Alignment.center,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 192, 30, 0),
                  child: Image.asset("assets/background/ob1_2.png"),
                ),
                OnBoardingButton(
                    color: Colors.white,
                    text: "Get Started",
                    callback: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OnBoarding2(),
                          ));
                    }),
              ],
            ),
            Positioned(
              top: 436,
              width: SizeConfig.screenWidth,
              child: Image.asset(
                "assets/background/nike_bg.png",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
