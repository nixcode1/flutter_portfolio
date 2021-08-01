import 'package:flutter/material.dart';
import 'package:portfolio/constants/styles.dart';

class Skills extends StatelessWidget {
  final String title;
  final List<String> children;
  final Color barColor;

  const Skills(
      {Key? key,
      required this.title,
      required this.barColor,
      required this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.8,
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
          ),
          SizedBox(width: 20),
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  title,
                  style: Styles.titleTextStyle,
                ),
              ),
              SizedBox(height: 30),
              Wrap(
                spacing: 5,
                runSpacing: 5,
                direction: Axis.horizontal,
                children: children
                    .map(
                      (e) => Chip(
                        label: Text(e),
                        labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    )
                    .toList(),
              )
            ]),
          )
        ],
      ),
    );
  }
}
