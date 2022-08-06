import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MorePageSocials extends StatelessWidget {
  const MorePageSocials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () => launchUrl(Uri.parse(
              'https://www.youtube.com/channel/UCqXAWrjSgLb0EPa_icPt-pw/videos')),
          child: Image.asset(
            'assets/images/Icon1.png',
          ),
        ),
        InkWell(
          onTap: () => launchUrl(
              Uri.parse('https://www.linkedin.com/company/saudi-pro-league/')),
          child: Image.asset(
            'assets/images/Icon2.png',
          ),
        ),
        InkWell(
          onTap: () => launchUrl(Uri.parse(
              'https://instagram.com/saudiproleague?igshid=YmMyMTA2M2Y=')),
          child: Image.asset(
            'assets/images/Icon3.png',
          ),
        ),
        InkWell(
          onTap: () => launchUrl(Uri.parse('https://twitter.com/SPL')),
          child: Image.asset(
            'assets/images/Icon4.png',
          ),
        ),
        InkWell(
          onTap: () =>
              launchUrl(Uri.parse('https://www.facebook.com/SaudiProLeague')),
          child: Image.asset(
            'assets/images/Icon5.png',
          ),
        ),
      ],
    );
  }
}
