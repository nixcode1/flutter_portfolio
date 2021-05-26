import 'package:flutter/material.dart';
import 'package:portfolio/constants/styles.dart';
import 'package:portfolio/ui/widgets/contact.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      child: Column(
        children: [
          Text("Contact Me", style: TextStyle(
            color: Colors.white,
            fontSize: 18
          )),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            children: [
              Contact(title: "Twitter", link: "https://twitter.com/nixcode1_"),
              Contact(title: "Github", link: "https://github.com/nixcode1")
            ],
          ),
        ],
      ),
    );
  }
}
