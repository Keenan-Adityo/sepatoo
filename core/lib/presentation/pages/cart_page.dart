import 'package:core/presentation/pages/cart2_page.dart';
import 'package:core/presentation/widgets/custom_button.dart';
import 'package:core/presentation/widgets/line_dash.dart';
import 'package:core/styles/size_config.dart';
import 'package:core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
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
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xffF7F7F9)),
                ),
              ),
            ),
            title: Text(
              "My Cart",
              style: kButtonText.copyWith(fontSize: 20),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "3 Item",
                        style: kSubtitle,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 104,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 22, vertical: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xff0D6EFD),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                Text(
                                  "1",
                                  style: kButtonText.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const Icon(
                                  Icons.minimize,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 19,
                          ),
                          Expanded(
                            child: Container(
                              height: 104,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  Image.asset("assets/cart_1.png"),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Nike Club Max",
                                        style: kHeading4,
                                      ),
                                      Text(
                                        "Rp 584.950",
                                        style: kSubtitle.copyWith(
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 104,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  Image.asset("assets/cart_2.png"),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Nike Air Max 200",
                                        style: kHeading4,
                                      ),
                                      Text(
                                        "Rp 940.500",
                                        style: kSubtitle.copyWith(
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 19,
                          ),
                          Container(
                            height: 104,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 22, vertical: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xffFF1900),
                            ),
                            child: SvgPicture.asset("assets/icons/trash.svg"),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Container(
                        height: 104,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Image.asset("assets/cart_3.png"),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Nike Air Max 270 Essential",
                                  style: kHeading4,
                                ),
                                Text(
                                  "Rp 740.950",
                                  style: kSubtitle.copyWith(
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
            width: SizeConfig.screenWidth,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DefaultTextStyle(
                      style: kHeading4.copyWith(
                        color: const Color(0xff707B81),
                      ),
                      child: const Text(
                        "Subtotal",
                      ),
                    ),
                    DefaultTextStyle(
                      style: kSubtitle.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      child: const Text(
                        "Rp 1.753.950",
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DefaultTextStyle(
                      style: kHeading4.copyWith(
                        color: const Color(0xff707B81),
                      ),
                      child: const Text(
                        "Delivery",
                      ),
                    ),
                    DefaultTextStyle(
                      style: kSubtitle.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      child: const Text(
                        "Rp 60.200",
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const LineDash(
                  color: Color(0xff707B81),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DefaultTextStyle(
                      style: kHeading4.copyWith(
                        color: Colors.black,
                      ),
                      child: const Text(
                        "Total Cost",
                      ),
                    ),
                    DefaultTextStyle(
                      style: kSubtitle.copyWith(
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff0D6EFD),
                      ),
                      child: const Text(
                        "Rp 1.814.150",
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: "Checkout",
                  callback: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Cart2Page(),
                        ));
                  },
                  color: const Color(0xff0D6EFD),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
