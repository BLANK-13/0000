import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class HomePageVideo extends StatelessWidget {
  const HomePageVideo(
      {Key? key,
      required this.thumbnail,
      required this.headLineAr,
      required this.headLineEn,
      required this.videoLink})
      : super(key: key);
  final String thumbnail;
  final String videoLink;
  final String headLineAr;
  final String headLineEn;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launchUrl(Uri.parse(videoLink)),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(thumbnail),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/Start.png'),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              isAr
                  ? Image.asset('assets/images/Group.png')
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 30),
                        Image.asset('assets/images/Group.png')
                      ],
                    ),
              const SizedBox(height: 4)
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              isAr
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: 55),
                        Text(
                          headLineAr,
                          maxLines: 1,
                          style: const TextStyle(
                            fontFamily: 'JannaLT',
                            fontSize: 14,
                            color: Color(0xFF171A22),
                          ),
                        ),
                      ],
                    )
                  : Center(
                      child: Text(
                        headLineEn,
                        maxLines: 1,
                        style: const TextStyle(
                          fontFamily: 'JannaLT',
                          fontSize: 14,
                          color: Color(0xFF171A22),
                        ),
                      ),
                    ),
              const SizedBox(height: 15)
            ],
          ),
        ],
      ),
    );
  }
}
