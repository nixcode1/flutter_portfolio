import 'package:flutter/material.dart';
import 'package:portfolio/constants/strings.dart';
import 'package:portfolio/ui/widgets/skills.dart';

class SkillsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Skills",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          SizedBox(height: 20),
          Skills(title: "Languages", barColor: Colors.green, children: Strings.languages,),
          Skills(title: "Frameworks", barColor: Colors.orange, children: Strings.frameworks,)
        ],
      ),
    );
  }
}
