import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import '../constants.dart';

class HomePageTweets extends StatelessWidget {
  const HomePageTweets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      width: double.infinity,
      color: Colors.white,
      child: Column(children: [
        const SizedBox(height: 20),
        Row(
          children: [
            const SizedBox(width: 10),
            Image.asset(
              'assets/images/bigIcon.png',
              scale: 1.5,
            ),
            Column(
              children: [
                Text(
                  "saudiLeague".tr(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'JannaLT',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      isAr ? 'spl@' : '@spl',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF6A6666),
                      ),
                    ),
                    const SizedBox(width: 50)
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          'عندما يريد العالم أن يتكلّم  ، فهو يتحدّث بلغة يونيكود. تسجّل الآن لحضور المؤتمر الدولي العاشر ليونيكود (Unicode Conference)، الذي سيعقد في 10-12 آذار 1997 بمدينة مَايِنْتْس، ألمانيا. ',
          style: TextStyle(
            fontSize: 13,
            fontFamily: 'JannaLT',
          ),
        ),
      ]),
    );
  }
}
