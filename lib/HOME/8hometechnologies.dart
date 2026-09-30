import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muhammadimran_portfolio/color.dart';

// ignore: camel_case_types
class hometechnologies extends StatefulWidget {
  const hometechnologies({super.key});

  @override
  State<hometechnologies> createState() => _hometechnologiesState();
}

// ignore: camel_case_types
class _hometechnologiesState extends State<hometechnologies> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colorname.deepNavy,
        ),
        // color: Colorname.darkBlue,
        child: Padding(
          padding: EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.code,
                    size: 32,
                    color: Colorname.white,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Technologies I Use",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colorname.white,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  technolgycard("Flutter"),
                  technolgycard("Dart"),

                  technolgycard("Supabase"),
                  technolgycard("Git & Github"),

                  technolgycard("UI/UX"),
                  technolgycard("Canva"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget technolgycard(String name) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colorname.cardLightBlue,
      ),
      child: Text(
        name,
        style: TextStyle(fontSize: 16, color: Colorname.cyanBlue),
      ),
    );
  }
}
