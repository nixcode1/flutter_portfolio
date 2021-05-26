import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  final String title;
  final String link;

  const Contact({Key? key, required this.title, required this.link})
      : super(key: key);

  void _launchURL() async => await canLaunch(link)
      ? await launch(link)
      : throw 'Could not launch $link';
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        primary: Colors.white,
        shape: StadiumBorder(
          side: BorderSide()
        )
      ),
      onPressed: _launchURL,
      child: Text(title),
    );
  }
}
