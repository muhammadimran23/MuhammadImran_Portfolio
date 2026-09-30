import 'package:flutter/material.dart';
import 'package:muhammadimran_portfolio/HOME/4homecontact.dart';
import 'package:muhammadimran_portfolio/HOME/5homeskills.dart';
import 'package:muhammadimran_portfolio/HOME/6hometogether.dart';
import 'package:muhammadimran_portfolio/HOME/7homeprojects.dart';
import 'package:muhammadimran_portfolio/HOME/8hometechnologies.dart';
import 'package:muhammadimran_portfolio/color.dart';

// ignore: camel_case_types
class homepageabout extends StatefulWidget {
  // const homepageabout({super.key});
  final GlobalKey skillsKey;
  final GlobalKey projectsKey;
  final GlobalKey contactkey;

  const homepageabout({
    super.key,
    required this.skillsKey,
    required this.projectsKey,
    required this.contactkey,
  });

  @override
  State<homepageabout> createState() => _homepageaboutState();
}

// ignore: camel_case_types
class _homepageaboutState extends State<homepageabout> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colorname.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.person,
                                    color: Colorname.deepNavy,
                                    size: 40,
                                  ),
                                  const SizedBox(width: 20),
                                  Text(
                                    "About",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colorname.deepNavy,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    "Me",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colorname.cyanBlue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),

                              Text(
                                "I'm a Flutter developer with a person for building beautiful\n"
                                "and functional mobile applications. I have experience in\n"
                                "Firebase, Supabase and modern UI/Ux design. I love learning\n"
                                "new technologies and working on challenging projects.",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colorname.brightBlue,
                                ),
                              ),

                              const SizedBox(height: 10),

                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colorname.navy,
                                    size: 32,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    "Location, karachi, Pakistan",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colorname.navy,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 10),

                              Row(
                                children: [
                                  Icon(
                                    Icons.email,
                                    color: Colorname.navy,
                                    size: 32,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    "Email: imranramzani401@gmail.com",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colorname.navy,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 10),

                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colorname.navy,
                                    size: 32,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    "Experience: 1 + Years (Self Projects)",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colorname.navy,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        Container(
                          width: 300,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            "about image/about image.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // homeskills(),
                // homeprojects(),
                Container(key: widget.skillsKey, child: homeskills()),

                Container(key: widget.projectsKey, child: homeprojects()),
              ],
            ),
          ),

          Expanded(
            child: Column(
              children: [
                Container(key: widget.contactkey, child: homecontact()),
                hometogether(),
                hometechnologies(),
              ],
            ),
          ),
          // hometogether(),
        ],
      ),
    );
  }
}
