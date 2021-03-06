import 'package:flutter/material.dart';
import 'package:portfolio/ui/widgets/project.dart';

class ProjectSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
      "Projects",
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
      ),
            ),
            SizedBox(height: 20),
            Project(title: "Student Shop", description: "A marketplace for student", imgLink: 'https://i.imgur.com/SjfRmeC.png', barColor: Color(0xFF5d5778),),
            Project(title: "Med Pal", description: "A study app for medical students", imgLink: "https://i.imgur.com/em4Em45.png", barColor: Colors.green)
          ],
        ),
    );
  }
}