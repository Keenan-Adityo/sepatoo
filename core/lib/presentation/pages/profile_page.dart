import 'package:core/presentation/pages/edit_page.dart';
import 'package:core/presentation/pages/forgot_password_page.dart';
import 'package:core/presentation/widgets/custom_button.dart';
import 'package:core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 40),
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Image.asset("assets/human.png"),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const EditPage(),
                              ));
                        },
                        child: Image.asset("assets/icons/edit.png"),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Text(
                "Your Name",
                style: kHeading4,
              ),
              const SizedBox(
                height: 12,
              ),
              TextField(
                style: const TextStyle(fontSize: 15),
                decoration: InputDecoration(
                    hintText: "Lorem Ipsum",
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    fillColor: const Color(0xffF7F7F9),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none)),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Email Address",
                style: kHeading4,
              ),
              const SizedBox(
                height: 12,
              ),
              TextField(
                style: const TextStyle(fontSize: 15),
                decoration: InputDecoration(
                    hintText: "loremipsum@gmail.com",
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    fillColor: const Color(0xffF7F7F9),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none)),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Password",
                style: kHeading4,
              ),
              const SizedBox(
                height: 12,
              ),
              TextField(
                obscureText: true,
                style: const TextStyle(fontSize: 15),
                decoration: InputDecoration(
                    hintText: "********",
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    fillColor: const Color(0xffF7F7F9),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none)),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                alignment: Alignment.centerRight,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgotPasswordPage(),
                        ));
                  },
                  child: Text(
                    "Recovery Password",
                    style: kBodyText.copyWith(color: const Color(0xff707B81)),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              CustomButton(
                text: "Save Now",
                callback: () {},
                color: const Color(0xff0D6EFD),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
