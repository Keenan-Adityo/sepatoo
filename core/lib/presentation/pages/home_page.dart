import 'package:core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/Hamburger.svg"),
        ),
        title: Stack(
          children: [
            Image.asset("assets/background/home_1.png"),
            Padding(
              padding: const EdgeInsets.only(
                left: 18,
                top: 8,
              ),
              child: Text(
                "Explore",
                style: kHeading3,
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              "assets/background/home_2.png",
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Text("body"),
      drawer: Drawer(
        child: Text("drawer"),
      ),
    );
  }
}
