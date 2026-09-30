import 'package:flutter/material.dart';
import 'package:muhammadimran_portfolio/color.dart';

// ignore: camel_case_types
class homecontact extends StatefulWidget {
  const homecontact({super.key});

  @override
  State<homecontact> createState() => _homecontactState();
}

// ignore: camel_case_types
class _homecontactState extends State<homecontact> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 10, right: 10),
      // child:
      // Expanded(
      //   flex: 2,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colorname.cardWhite,
        shadowColor: Colorname.primaryBlue.withOpacity(0.6),
        child: Padding(
          padding: EdgeInsets.only(left: 10, top: 20, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.mail, color: Colorname.navy, size: 32),
                  SizedBox(width: 10),
                  Text(
                    "Contact Me",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colorname.navy,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              TextFormField(
                // controller: passwordController,
                // obscureText: isHidden,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colorname.grayText,
                      width: 1.5,
                    ),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colorname.grayText, width: 2),
                  ),

                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colorname.grayText,
                  ),
                  hintText: "Name",
                  border: const OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                // controller: passwordController,
                // obscureText: isHidden,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colorname.grayText,
                      width: 1.5,
                    ),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colorname.grayText, width: 2),
                  ),

                  prefixIcon: const Icon(
                    Icons.email,
                    color: Colorname.grayText,
                  ),
                  hintText: "Email",
                  border: const OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colorname.grayText, width: 1.5),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 14),
                      child: Icon(Icons.message, color: Colorname.grayText),
                    ),

                    const SizedBox(width: 10),

                    Expanded(
                      child: TextFormField(
                        maxLines: null,
                        expands: true,
                        decoration: const InputDecoration(
                          hintText: "Message",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 14, right: 10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              TextButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colorname.primaryBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                ),
                onPressed: () {},
                icon: Icon(Icons.send, color: Colorname.white),
                label: Text(
                  "Send Message",
                  style: TextStyle(fontSize: 17, color: Colorname.white),
                ),
              ),

              SizedBox(height: 10),
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
