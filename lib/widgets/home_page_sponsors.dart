import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageSponsors extends StatelessWidget {
  const HomePageSponsors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124,
      width: double.infinity,
      color: Colors.white,
      child: ListView(
        physics: const ScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          InkWell(
            onTap: () => launchUrl(Uri.parse('https://spl.sa/')),
            child: Image.asset('assets/images/spons1.png'),
          ),
          InkWell(
            onTap: () => launchUrl(Uri.parse('https://spl.sa/')),
            child: Image.asset('assets/images/spons2.png'),
          ),
          InkWell(
            onTap: () => launchUrl(Uri.parse('https://spl.sa/')),
            child: Image.asset('assets/images/spons1.png'),
          ),
          InkWell(
            onTap: () => launchUrl(Uri.parse('https://spl.sa/')),
            child: Image.asset('assets/images/spons2.png'),
          ),
        ],
      ),
    );
  }
}
