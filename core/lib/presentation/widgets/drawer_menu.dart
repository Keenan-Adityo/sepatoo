import 'package:core/presentation/pages/cart_page.dart';
import 'package:core/presentation/pages/login_page.dart';
import 'package:core/presentation/pages/profile_page.dart';
import 'package:core/styles/size_config.dart';
import 'package:core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    print(SizeConfig.screenWidth);
    return Scaffold(
      backgroundColor: Color(0xff1483C2),
      body: SafeArea(
        child: Container(
          width: SizeConfig.screenWidth * 0.8,
          padding: const EdgeInsets.fromLTRB(20, 30, 0, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/human.png"),
              SizedBox(
                height: 15,
              ),
              Text(
                "Lorem Ipsum",
                style: kHeading2.copyWith(
                    fontSize: 20, overflow: TextOverflow.visible),
              ),
              SizedBox(
                height: 55,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/profile.svg",
                      // ignore: deprecated_member_use
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Text(
                      "Profile",
                      style: kHeading4.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartPage(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Image.asset("assets/bag-2.png"),
                    SizedBox(
                      width: 22,
                    ),
                    Text(
                      "My Cart",
                      style: kHeading4.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Text(
                    "Favorite",
                    style: kHeading4.copyWith(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/orders.svg",
                    // ignore: deprecated_member_use
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Text(
                    "Orders",
                    style: kHeading4.copyWith(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Icon(
                    Icons.notifications_none,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Text(
                    "Notifications",
                    style: kHeading4.copyWith(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/settings.svg",
                    // ignore: deprecated_member_use
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Text(
                    "Settings",
                    style: kHeading4.copyWith(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                    border:
                        Border(top: BorderSide(width: 1, color: Colors.white))),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/signout.svg",
                        // ignore: deprecated_member_use
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      Text(
                        "Sign Out",
                        style: kHeading4.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
