import 'package:flutter/material.dart';
import 'package:portfolio/constants/strings.dart';
import 'package:portfolio/constants/styles.dart';
import 'package:portfolio/ui/widgets/contact.dart';
import 'package:portfolio/ui/widgets/contact_section.dart';
import 'package:portfolio/ui/widgets/project_section.dart';
import 'package:portfolio/ui/widgets/skills_section.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
          "nixcode's",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0, top: 30),
                child: Row(
                  children: [
                    Text("Hello, I'm ", style: Styles.textStyle),
                    Text("Amaechi Precious", style: Styles.nameStyle)
                    // AnimatedTextKit(
                    //   animatedTexts: [
                    //     ScaleAnimatedText("Amaechi precious",
                    //         textStyle: Styles.nameStyle),
                    //   ],
                    //   isRepeatingAnimation: false,
                    // ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                height: 100,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text("I develop", style: Styles.textStyle),
                    ),
                    SizedBox(width: 20),
                    AnimatedTextKit(
                      animatedTexts: [
                        RotateAnimatedText('Stunning Apps and Websites',
                            textStyle: Styles.nameStyle),
                        RotateAnimatedText('Scalable servers',
                            textStyle: Styles.nameStyle),
                        RotateAnimatedText('Maintainable softwares',
                            textStyle: Styles.nameStyle),
                      ],
                      totalRepeatCount: 4,
                      pause: const Duration(milliseconds: 1000),
                      displayFullTextOnTap: true,
                      repeatForever: true,
                    )
                  ],
                ),
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
