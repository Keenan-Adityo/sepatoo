import 'package:core/presentation/pages/home_page.dart';
import 'package:core/presentation/widgets/custom_button.dart';
import 'package:core/presentation/widgets/line_dash.dart';
import 'package:core/styles/size_config.dart';
import 'package:core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Cart2Page extends StatelessWidget {
  const Cart2Page({Key? key}) : super(key: key);

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
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(vertical: 46),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 34, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Contact Information",
                        style: kHeading4.copyWith(fontSize: 14),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color(0xffF8F9FA)),
                            child: SvgPicture.asset("assets/icons/msg.svg"),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "loremipsum@gmail.com",
                                  style: kButtonText.copyWith(fontSize: 14),
                                ),
                                Text(
                                  "Email",
                                  style: kButtonText.copyWith(
                                      fontSize: 12, color: const Color(0xff707B81)),
                                ),
                              ],
                            ),
                          ),
                          Image.asset("assets/icons/pen.png")
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color(0xffF8F9FA)),
                            child: SvgPicture.asset("assets/icons/phone.svg"),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "+62821-39-488-953",
                                  style: kButtonText.copyWith(fontSize: 14),
                                ),
                                Text(
                                  "Phone",
                                  style: kButtonText.copyWith(
                                      fontSize: 12, color: const Color(0xff707B81)),
                                ),
                              ],
                            ),
                          ),
                          Image.asset("assets/icons/pen.png")
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Address",
                        style: kHeading4.copyWith(fontSize: 14),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Rungkut, Kota Surabaya, Jawa Timur",
                            style: kButtonText.copyWith(
                                fontSize: 12, color: const Color(0xff707B81)),
                          ),
                          const Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Image.asset("assets/Map.png"),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Payment Method",
                        style: kHeading4.copyWith(fontSize: 14),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/mandiri.png"),
                          const SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lorem Ipsum",
                                  style: kButtonText.copyWith(fontSize: 14),
                                ),
                                Text(
                                  "**** **** 0696 4629",
                                  style: kButtonText.copyWith(
                                      fontSize: 12, color: const Color(0xff707B81)),
                                ),
                              ],
                            ),
                          ),
                          const Icon(Icons.keyboard_arrow_down),
                        ],
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
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => Center(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 64, vertical: 40),
                          width: double.infinity,
                          height: 375,
                          child: Column(
                            children: [
                              Image.asset("assets/checkout.png"),
                              const SizedBox(
                                height: 24,
                              ),
                              DefaultTextStyle(
                                style: kHeading4.copyWith(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                                child: const Text(
                                  "Your Payment Is Successful",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              CustomButton(
                                text: "Back To Shopping",
                                callback: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const HomePage(),
                                      ));
                                },
                                color: const Color(0xff0D6EFD),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
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
