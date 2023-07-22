import 'package:core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class EditPage extends StatelessWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            iconSize: 15,
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(const Color(0xffF7F7F9)),
            ),
          ),
        ),
        title: Text(
          "Profile",
          style: kButtonText.copyWith(fontSize: 20),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Done",
              style: kHeading2.copyWith(fontSize: 15, color: const Color(0xff0D6EFD)),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Image.asset("assets/human.png"),
                      Text(
                        "Lorem Ipsum",
                        style: kButtonText.copyWith(fontSize: 20),
                      ),
                      Text(
                        "Change Profile",
                        style: kBodyText.copyWith(color: const Color(0xff0D6EFD)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),
                Text(
                  "First Name",
                  style: kHeading4,
                ),
                const SizedBox(
                  height: 12,
                ),
                TextField(
                  style: const TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.check,
                      color: Color(0xff0D6EFD),
                    ),
                    hintText: "Lorem",
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    fillColor: const Color(0xffF7F7F9),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Last Name",
                  style: kHeading4,
                ),
                const SizedBox(
                  height: 12,
                ),
                TextField(
                  style: const TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.check,
                      color: Color(0xff0D6EFD),
                    ),
                    hintText: "Ipsum",
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    fillColor: const Color(0xffF7F7F9),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Location",
                  style: kHeading4,
                ),
                const SizedBox(
                  height: 12,
                ),
                TextField(
                  style: const TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.check,
                      color: Color(0xff0D6EFD),
                    ),
                    hintText: "Sidoarjo, Indonesia",
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    fillColor: const Color(0xffF7F7F9),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Mobile Number",
                  style: kHeading4,
                ),
                const SizedBox(
                  height: 12,
                ),
                TextField(
                  style: const TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.check,
                      color: Color(0xff0D6EFD),
                    ),
                    prefixIcon: Container(
                      margin: const EdgeInsets.only(left: 16),
                      width: 70,
                      child: Row(
                        children: [
                          Text(
                            "+62",
                            style: kSubtitle,
                          ),
                          const Icon(Icons.keyboard_arrow_down)
                        ],
                      ),
                    ),
                    hintText: "82139488953",
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    fillColor: const Color(0xffF7F7F9),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
