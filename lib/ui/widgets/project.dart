import 'package:flutter/material.dart';
import 'package:portfolio/constants/styles.dart';

class Project extends StatelessWidget {
  final String title;
  final String description;
  final String imgLink;
  final Color barColor;

  const Project({Key? key, required this.title, required this.description, required this.imgLink, required this.barColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      margin: EdgeInsets.only(bottom: 50),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Container(
            width: 20,
            decoration: BoxDecoration(
              color: barColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            constraints: BoxConstraints(
              minHeight: 500,
            ),
          ),
          Expanded(
            child: Wrap(
              // wrap: MainAxisAlignment.spaceBetween,
              runSpacing: 20,
              alignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: Styles.titleTextStyle,
                      ),
                      SizedBox(height: 20),
                      Text(
                        description,
                        style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            color: Colors.grey),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(barColor)
                        ),
                        child: Text(
                          "Explore",
                          style: TextStyle(
                              fontSize: 16, fontStyle: FontStyle.italic),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  padding: EdgeInsets.all(10),
                  child: Image.asset(imgLink),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
