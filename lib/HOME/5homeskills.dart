import 'package:flutter/material.dart';
import 'package:muhammadimran_portfolio/color.dart';

// ignore: camel_case_types
class homeskills extends StatefulWidget {
  const homeskills({super.key});

  @override
  State<homeskills> createState() => _homeskillsState();
}

// ignore: camel_case_types
class _homeskillsState extends State<homeskills> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        width: 900,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colorname.cardWhite,
          shadowColor: Colorname.primaryBlue.withOpacity(0.6),
          child: Padding(
            padding: EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.settings, color: Colorname.deepNavy, size: 32),

                    SizedBox(width: 20),
                    Text(
                      "My",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colorname.deepNavy,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Skills",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colorname.cyanBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  children: [
                    skillCard("skills logo/flutter logo.png", "Flutter"),
                    skillCard("skills logo/Dart logo.png", "Dart"),
                    skillCard("skills logo/Supabase logo.png", "Supabase"),
                    skillCard("skills logo/Github logo.png", "Git & Github"),
                    skillCard("skills logo/Canva logo.png", "Canva"),
                  ],
                ),
                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     // first

                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget skillCard(String image, String title) {
    return Container(
      width: 110,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colorname.grayText, width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, width: 60, height: 60),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: Colorname.cyanBlue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
