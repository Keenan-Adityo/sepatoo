import 'package:core/presentation/pages/cart_page.dart';
import 'package:core/presentation/pages/profile_page.dart';
import 'package:core/presentation/widgets/drawer_menu.dart';
import 'package:core/styles/size_config.dart';
import 'package:core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return ZoomDrawer(
      menuBackgroundColor: Color(0xff1483C2),
      angle: -10,
      borderRadius: 40,
      slideWidth: SizeConfig.screenWidth * 0.64,
      style: DrawerStyle.defaultStyle,
      menuScreen: DrawerMenu(),
      mainScreen: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Color(0xffF7F7F9),
          appBar: AppBar(
            backgroundColor: Color(0xffF7F7F9),
            leading: IconButton(
              onPressed: () {
                ZoomDrawer.of(context)!.toggle();
              },
              icon: SvgPicture.asset("assets/icons/Hamburger.svg"),
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartPage(),
                    ),
                  );
                },
                child: Image.asset(
                  "assets/background/home_2.png",
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Material(
                          elevation: 1,
                          borderRadius: BorderRadius.circular(14),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 26),
                            child: TextField(
                              style: const TextStyle(fontSize: 15),
                              decoration: InputDecoration(
                                  icon: SvgPicture.asset(
                                      "assets/icons/magnifier.svg"),
                                  hintText: "Looking for shoes",
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(14),
                                      borderSide: BorderSide.none)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      CircleAvatar(
                        backgroundColor: Color(0xff0D6EFD),
                        radius: 26,
                        child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/home_3.svg")),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  child: Text(
                    "Select Category",
                    textAlign: TextAlign.left,
                    style: kHeading4.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16, bottom: 20, left: 21),
                  width: SizeConfig.screenWidth,
                  height: 40,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      var items = ["All Shoes", "Outdoor", "Tennis"];
                      return Container(
                        margin: EdgeInsets.only(right: 16),
                        width: 108,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: (items[index] == "Outdoor")
                              ? Color(0xff0D6EFD)
                              : Colors.white,
                        ),
                        child: Text(
                          items[index],
                          textAlign: TextAlign.center,
                          style: (items[index] == "Outdoor")
                              ? kSubtitle.copyWith(
                                  color: Colors.white, fontSize: 12)
                              : kSubtitle.copyWith(
                                  color: Colors.black, fontSize: 12),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Shoes",
                        textAlign: TextAlign.left,
                        style: kHeading4.copyWith(fontWeight: FontWeight.w600),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "See all",
                            style: kSubtitle.copyWith(
                                color: Colors.blue, fontSize: 12),
                          )),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 12,
                                left: 12,
                                child: Icon(
                                  Icons.favorite_border,
                                  size: 20,
                                ),
                              ),
                              Positioned(
                                  child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/shoes_1.png"),
                                    Text(
                                      "BEST SELLER",
                                      textAlign: TextAlign.left,
                                      style: kSubtitle.copyWith(
                                          color: Colors.blue,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "Nike Jordan",
                                      textAlign: TextAlign.left,
                                      style: kHeading4,
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      "Rp. 302.000",
                                      textAlign: TextAlign.left,
                                      style: kSubtitle.copyWith(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              )),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Color(0xff0D6EFD),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(14),
                                          bottomRight: Radius.circular(14),
                                        )),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 12,
                                left: 12,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 20,
                                ),
                              ),
                              Positioned(
                                  child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/shoes_2.png"),
                                    Text(
                                      "BEST SELLER",
                                      textAlign: TextAlign.left,
                                      style: kSubtitle.copyWith(
                                          color: Colors.blue,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "Nike Jordan Max",
                                      textAlign: TextAlign.left,
                                      style: kHeading4,
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      "Rp. 752.000",
                                      textAlign: TextAlign.left,
                                      style: kSubtitle.copyWith(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              )),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Color(0xff0D6EFD),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(14),
                                          bottomRight: Radius.circular(14),
                                        )),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "New Arrivals",
                        textAlign: TextAlign.left,
                        style: kHeading4.copyWith(fontWeight: FontWeight.w600),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "See all",
                            style: kSubtitle.copyWith(
                                color: Colors.blue, fontSize: 12),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: double.infinity,
                    height: 150,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 21,
                          child: Image.asset("assets/background/promo.png"),
                        ),
                        Positioned(
                          left: 191,
                          child: Image.asset("assets/shoes_3.png"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: CircleAvatar(
              backgroundColor: Color(0xff0D6EFD),
              radius: 26,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartPage(),
                    ),
                  );
                },
                icon: Image.asset("assets/bag-2.png"),
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ),
        Positioned(
          bottom: 0,
          child: SizedBox(
            width: SizeConfig.screenWidth,
            child: Container(
              height: 106,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/background/nav.png"),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(30, 52, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/icons/home-2.svg"),
                        SizedBox(
                          width: 41,
                        ),
                        Image.asset("assets/icons/heart.png")
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/icons/notification.svg"),
                        SizedBox(
                          width: 41,
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
                            child:
                                SvgPicture.asset("assets/icons/profile.svg")),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
