import 'package:flutter/material.dart';
import 'package:portfolio/constants/strings.dart';
import 'package:portfolio/constants/styles.dart';
import 'package:portfolio/ui/widgets/contact.dart';
import 'package:portfolio/ui/widgets/contact_section.dart';
import 'package:portfolio/ui/widgets/project_section.dart';
import 'package:portfolio/ui/widgets/skills_section.dart';

class DesktopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0,
        actions: [MaterialButton(onPressed: () {})],
        title: Text(
          "nixcode",
          style: Styles.textStyle,
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 50, right: 30),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.black87),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0, top: 30),
                child: RichText(
                  text: TextSpan(
                    text: Strings.greetings,
                    style: Styles.textStyle,
                    children: [
                      TextSpan(text: Strings.name, style: Styles.nameStyle)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text("I develop beautiful mobile apps",
                    style: Styles.textStyle),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text("and websites", style: Styles.textStyle),
              ),
              SizedBox(height: 50),
              SkillsSection(),
              SizedBox(height: 30),
              ProjectSection(),
              ContactSection(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
