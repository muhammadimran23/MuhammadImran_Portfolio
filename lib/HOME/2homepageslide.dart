import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhammadimran_portfolio/color.dart';

// ignore: camel_case_types
class homepageslide extends StatefulWidget {
  const homepageslide({super.key});

  @override
  State<homepageslide> createState() => _homepageslideState();
}

// ignore: camel_case_types
class _homepageslideState extends State<homepageslide> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colorname.darkBlue,
            Colorname.darkBlue,
            Colorname.primaryBlue,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colorname.darkBlue.withOpacity(0.8),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 50),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello, I'm",
                    style: TextStyle(fontSize: 17, color: Colorname.white),
                  ),

                  Text.rich(
                    TextSpan(
                      text: "Muhammad",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colorname.white,
                      ),
                      children: [
                        TextSpan(
                          text: " Imran",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colorname.brightBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Wrap(
                    spacing: 5,
                    children: [
                      Text(
                        "Flutter Developer",
                        style: TextStyle(fontSize: 17, color: Colorname.white),
                      ),
                      Text(
                        "|",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colorname.brightBlue,
                        ),
                      ),
                      Text(
                        "Mobile App Developer",
                        style: TextStyle(fontSize: 17, color: Colorname.white),
                      ),
                      Text(
                        "|",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colorname.brightBlue,
                        ),
                      ),
                      Text(
                        "Web Developer",
                        style: TextStyle(fontSize: 17, color: Colorname.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "I build clean, modern and user-friendly applications. Passionate about\nturning ideas into real products using modern technologies",
                    style: TextStyle(fontSize: 15, color: Colorname.white),
                  ),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colorname.darkBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(10),
                          ),
                          side: BorderSide(
                            color: Colorname.primaryBlue,
                            width: 1,
                          ),
                        ),
                        onPressed: () {},
                        icon: Icon(Icons.mail_outline, color: Colorname.white),
                        label: Text(
                          "Contact",
                          style: TextStyle(color: Colorname.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 140),
              child: Container(
                width: 200,
                height: 200,

                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colorname.primaryBlue, width: 4),
                  boxShadow: [
                    BoxShadow(
                      color: Colorname.primaryBlue.withOpacity(0.6),
                      blurRadius: 30,
                      spreadRadius: 6,
                    ),
                  ],
                ),

                child: ClipOval(
                  child: Image.asset(
                    "asset/imran.jpeg",
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                    alignment: AlignmentGeometry.topCenter,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text(
                "Turning Ideas\nInto Real Products",
                textAlign: TextAlign.center,
                style: GoogleFonts.caveat(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
