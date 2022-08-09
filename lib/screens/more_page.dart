import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import '../constants.dart';
import '../widgets/more_page_options.dart';
import '../widgets/more_page_socials.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: const BottomBarWidget(),
      backgroundColor: mainColor,
      body: Column(
        children: [
          const SizedBox(
            height: 37,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 10),
              Image.asset('assets/images/bigIcon.png')
            ],
          ),
          Expanded(
            child: MorePageOptions(),
          ),
          const MorePageSocials(),
          const SizedBox(
            height: 40,
          ),
          TextButton(
            onPressed: () => translator.setNewLanguage(context,
                newLanguage: isAr ? 'en' : 'ar'),
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    isAr ? 'English' : 'العربي',
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(width: 10),
                  Image.asset('assets/images/ic_g_translate_24px.png'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10)
        ],
      ),
    );
  }
}
