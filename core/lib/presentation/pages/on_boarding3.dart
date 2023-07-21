import 'package:core/presentation/pages/login_page.dart';
import 'package:core/presentation/widgets/on_boarding_button.dart';
import 'package:core/styles/size_config.dart';
import 'package:core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Color(0xff1483C2),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 45,
              width: SizeConfig.screenWidth,
              child: Image.asset("assets/background/ob3_2.png"),
            ),
            Positioned(
              top: 389,
              left: 52,
              child: Image.asset("assets/background/ob2_2.png"),
            ),
            Container(
              padding: EdgeInsets.only(top: 453),
              width: SizeConfig.screenWidth,
              child: Column(
                children: [
                  Text(
                    "You Have The ",
                    style: kHeading2,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Power To",
                    style: kHeading2,
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(26, 12, 26, 40),
                    child: Text(
                      "There Are Many Beautiful And Attractive Plants To Your Room",
                      style: kSubtitle.copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Image.asset(
                    "assets/background/ob3_3.png",
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 65,
                  ),
                  OnBoardingButton(
                      text: "Next",
                      callback: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      }),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 436),
              width: double.infinity,
              child: Image.asset(
                "assets/background/nike_bg.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 108,
              left: 52,
              child: Image.asset(
                "assets/background/ob3_1.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
