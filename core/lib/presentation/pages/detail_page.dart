import 'package:core/presentation/pages/cart_page.dart';
import 'package:core/presentation/pages/edit_page.dart';
import 'package:core/presentation/pages/forgot_password_page.dart';
import 'package:core/presentation/widgets/custom_button.dart';
import 'package:core/styles/size_config.dart';
import 'package:core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F9),
      appBar: AppBar(
        backgroundColor: const Color(0xffF7F7F9),
        leading: Container(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            iconSize: 15,
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Text(
          "Sneaker Shop",
          style: kButtonText.copyWith(fontSize: 20),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
            },
            child: Image.asset(
              "assets/background/home_2.png",
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Image.asset("assets/detail.png"),
                    Positioned(
                      top: 26,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: SizeConfig.screenWidth - 76,
                            child: Text(
                              "Nike Air Max 270 Essential",
                              style: kHeading2.copyWith(
                                  fontSize: 26, color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Men's Shoes",
                            style: kSubtitle.copyWith(color: Color(0xff707B81)),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Rp 799.900",
                            style: kSubtitle.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 19,
              ),
              Text(
                "The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike........",
                style: kSubtitle.copyWith(
                  color: Color(0xff707B81),
                ),
              ),
              const SizedBox(
                height: 9,
              ),
              Container(
                alignment: Alignment.centerRight,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Read More",
                    style: kSubtitle.copyWith(
                      color: const Color(0xff0D6EFD),
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundColor: const Color(0xffD9D9D9),
                    radius: 26,
                    child: Image.asset("assets/icons/heart.png"),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(13),
                    color: const Color(0xff0D6EFD),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CartPage(),
                            ));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 13, horizontal: 46),
                        child: Row(
                          children: [
                            Image.asset("assets/bag-2.png"),
                            SizedBox(
                              width: 16,
                            ),
                            Text(
                              "Add To Cart",
                              textAlign: TextAlign.center,
                              style: kButtonText.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
