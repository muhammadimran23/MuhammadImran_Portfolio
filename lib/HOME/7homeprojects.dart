import 'package:flutter/material.dart';
import 'package:muhammadimran_portfolio/color.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class homeprojects extends StatefulWidget {
  const homeprojects({super.key});
  @override
  State<homeprojects> createState() => _homeprojectsState();
}

// ignore: camel_case_types
class _homeprojectsState extends State<homeprojects> {
  Future<void> openProject(String url) async {
    final Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.apps, color: Colorname.deepNavy, size: 32),

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
                      "Projects",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colorname.cyanBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  children: [
                    projectcard(
                      "Myprojects/ShopNest.png",
                      "ShopNest",
                      "E-Commerce Mobile App",
                      "(Flutter + Supabase)",
                      "https://github.com/muhammadimran23/Shop-Nest-Project",
                    ),
                    projectcard(
                      "Myprojects/DineUp thumbnail.png",
                      "Dine Up",
                      "Resturent Management App",
                      "(Flutter)",
                      "https://github.com/muhammadimran23/Dine-up-project",
                    ),
                    projectcard(
                      "Myprojects/Shopnest Adminpanel.png",
                      "Admin Panel",
                      "Admin Dashboard",
                      "(Flutter web)",
                      "https://your-adminpanel-link.com",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget projectcard(
    String image,
    String title,
    String subtitle,
    String descrition,
    String projectUrl,
  ) {
    return SizedBox(
      width: 250,
      // height: 250,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(color: Colorname.grayText, width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5, right: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    // height: 150,
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                      // filterQuality: FilterQuality.high,
                    ),
                  ),

                  SizedBox(width: 8),
                  Text(
                    title,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colorname.deepNavy,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colorname.brightBlue,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    descrition,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colorname.brightBlue,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colorname.deepNavy,
                      maximumSize: Size(double.infinity, 50),
                      side: BorderSide(width: 2, color: Colorname.primaryBlue),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      openProject(projectUrl);
                    },
                    child: (Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "View Project",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colorname.white,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Icon(
                          Icons.arrow_forward,
                          color: Colorname.primaryBlue,
                          size: 20,
                        ),
                      ],
                    )),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
