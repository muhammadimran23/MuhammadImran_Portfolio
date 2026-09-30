import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muhammadimran_portfolio/HOME/2homepageslide.dart';
import 'package:muhammadimran_portfolio/HOME/3homepageabout.dart';
import 'package:muhammadimran_portfolio/color.dart';

// ignore: camel_case_types
class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

// ignore: camel_case_types
class _homepageState extends State<homepage> {
  int selectedIndex = 0;
  final GlobalKey homeKey = GlobalKey();
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey skillsKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();
  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: Duration(milliseconds: 700),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colorname.darkBlue,
        title: Row(
          children: [
            FaIcon(FontAwesomeIcons.code, color: Colorname.primaryBlue),
            SizedBox(width: 10),
            Text.rich(
              TextSpan(
                text: "Muhammad",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colorname.white,
                ),
                children: [
                  TextSpan(
                    text: " Imran",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colorname.brightBlue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          Center(
            child: Row(
              children: [
                navItem("Home", 0),
                navItem("About", 1),
                navItem("Skills", 2),
                navItem("Project", 3),
                navItem("Contact", 4),
                SizedBox(width: 50),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colorname.primaryBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.download, color: Colorname.white),
                  label: Text(
                    "Download",
                    style: TextStyle(color: Colorname.white),
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(key: homeKey, child: homepageslide()),

              Container(
                key: aboutKey,
                child: homepageabout(
                  skillsKey: skillsKey,
                  projectsKey: projectsKey,
                  contactkey: contactKey,
                ),
              ),
              // homepageabout(),
              SizedBox(height: 20),
              Container(
                color: Colorname.deepNavy,
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 40),
                    Text(
                      "© 2025 Muhammad Imran. All rights reserved.",
                      style: TextStyle(fontSize: 16, color: Colorname.white),
                    ),
                    Spacer(),
                    FaIcon(
                      FontAwesomeIcons.github,
                      size: 20,
                      color: Colorname.white,
                    ),
                    SizedBox(width: 10),
                    FaIcon(
                      FontAwesomeIcons.linkedin,
                      size: 20,
                      color: Colorname.white,
                    ),
                    SizedBox(width: 10),
                    FaIcon(
                      FontAwesomeIcons.instagram,
                      size: 20,
                      color: Colorname.white,
                    ),

                    SizedBox(width: 10),
                    Icon(Icons.mail, size: 20, color: Colorname.white),

                    SizedBox(width: 50),

                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget navItem(String title, int index) {
    bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
        if (index == 0) {
          scrollToSection(homeKey);
        } else if (index == 1) {
          scrollToSection(aboutKey);
        } else if (index == 2) {
          scrollToSection(skillsKey);
        } else if (index == 3) {
          scrollToSection(projectsKey);
        } else if (index == 4) {
          scrollToSection(contactKey);
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: isSelected ? Colorname.primaryBlue : Colorname.white,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),

            const SizedBox(height: 5),

            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              height: 2,
              width: isSelected ? 30 : 0,
              color: Colorname.primaryBlue,
            ),
          ],
        ),
      ),
    );
  }
}
