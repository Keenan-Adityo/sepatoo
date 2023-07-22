import 'package:core/presentation/pages/on_boarding3.dart';
import 'package:core/presentation/widgets/onboarding_button.dart';
import 'package:core/styles/size_config.dart';
import 'package:core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: const Color(0xff1483C2),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 130,
              width: SizeConfig.screenWidth,
              child: Image.asset("assets/background/ob2_1.png"),
            ),
            Positioned(
              top: 389,
              left: 52,
              child: Image.asset("assets/background/ob2_2.png"),
            ),
            Container(
              padding: const EdgeInsets.only(top: 453),
              width: SizeConfig.screenWidth,
              child: Column(
                children: [
                  Text(
                    "Let's Start Journey",
                    style: kHeading2,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "With Nike",
                    style: kHeading2,
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(26, 12, 26, 40),
                    child: Text(
                      "Smart, Gorgeous & Fashionable Collection Explore Now",
                      style: kSubtitle.copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Image.asset(
                    "assets/background/ob2_3.png",
                    alignment: Alignment.center,
                  ),
                  const SizedBox(
                    height: 65,
                  ),
                  OnBoardingButton(
                      color: Colors.white,
                      text: "Next",
                      callback: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OnBoarding3(),
                            ));
                      }),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 436),
              width: double.infinity,
              child: Image.asset(
                "assets/background/nike_bg.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 116,
              left: 27,
              child: Image.asset(
                "assets/background/ob2_4.png",
              ),
            ),
            Positioned(
              top: 113,
              right: 26,
              child: Image.asset(
                "assets/background/ob2_5.png",
              ),
            )
          ],
        ),
      ),
    );
  }
}
