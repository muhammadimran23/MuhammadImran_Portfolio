import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muhammadimran_portfolio/color.dart';

// ignore: camel_case_types
class hometogether extends StatefulWidget {
  const hometogether({super.key});

  @override
  State<hometogether> createState() => _hometogetherState();
}

// ignore: camel_case_types
class _hometogetherState extends State<hometogether> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colorname.deepNavy,
            ),
            // color: Colorname.darkBlue,
            child: Padding(
              padding: EdgeInsets.only(left: 10, top: 20, right: 10),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.handshake,
                        size: 32,
                        color: Colorname.white,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Let's Work Together",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colorname.white,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "I'm available for freelance projects\nand full-time opportunities.",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colorname.white,
                            ),
                          ),
                          // SizedBox(width: 200),
                          Padding(
                            padding: EdgeInsetsGeometry.only(left: 40, top: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colorname.deepNavy,
                                maximumSize: Size(double.infinity, 50),
                                side: BorderSide(
                                  width: 2,
                                  color: Colorname.primaryBlue,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {},
                              child: (Row(
                                children: [
                                  Text(
                                    "Hire Me",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colorname.white,
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colorname.primaryBlue,
                                    size: 22,
                                  ),
                                ],
                              )),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
