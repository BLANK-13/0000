import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import '../../constants.dart';

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
                  children: const [
                    Text(
                      '@spl',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF6A6666),
                        fontFamily: 'JannaLT',
                      ),
                    ),
                    SizedBox(width: 50)
                  ],
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: isAr
              ? const EdgeInsets.only(right: 15)
              : const EdgeInsets.only(left: 15),
          child: Text(
            isAr
                ? 'عندما يريد العالم أن يتكلّم  ، فهو يتحدّث بلغة يونيكود. تسجّل الآن لحضور المؤتمر الدولي العاشر ليونيكود (Unicode Conference)، الذي سيعقد في 10-12 آذار 1997 بمدينة مَايِنْتْس، ألمانيا. '
                : '"When the world wants to talk, it speaks Unicode. Register now to attend the Tenth International Unicode Conference, which will be held on 10-12 March 1997 in Mainz, Germany. The conference will bring together experts from all sectors of the industry on the Internet and Unicode, where both international and local will discuss ways to use Unicode in existing systems and in terms of computer applications, fonts, text design and multilingual computing when the world wants to speak It speaks Unicode. Register now to attend the Tenth International Unicode Conference, which will be held on 10-12 March 1997 in Mainz, Germany.',
            maxLines: 3,
            style: const TextStyle(
              fontSize: 13,
              fontFamily: 'JannaLT',
            ),
          ),
        ),
      ]),
    );
  }
}
