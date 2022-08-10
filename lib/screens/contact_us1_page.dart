import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import '../constants.dart';
import '../widgets/contact_us_button.dart';
import '../widgets/contact_us1_fields.dart';

class ContactUs1Page extends StatelessWidget {
  const ContactUs1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFFF3F3F3),
        appBar: AppBar(
          title: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/images/bigIcon.png',
                height: 40,
                width: 61,
              ),
            ],
          ),
          backgroundColor: const Color(0xFFFFFFFF),
          toolbarHeight: 66,
          centerTitle: true,
          bottom: TabBar(
            indicatorWeight: 5,
            labelColor: mainColor,
            indicatorColor: mainColor,
            tabs: [
              ListTile(
                dense: true,
                visualDensity: const VisualDensity(vertical: -4),
                title: Center(
                    child: Text(
                  "data".tr(),
                  style: const TextStyle(fontSize: 20, fontFamily: 'JannaLT'),
                )),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  "nextInfo".tr(),
                  style: const TextStyle(fontSize: 15, fontFamily: 'JannaLT'),
                ),
              ]),
            ],
          ),
          flexibleSpace:
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  '1/2',
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF707070),
                      fontFamily: 'JannaLT'),
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          ]),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "contactUs".tr(),
              style: const TextStyle(
                  color: mainColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'JannaLT'),
            ),
            const SizedBox(
              height: 20,
            ),
            Flexible(child: ContactUsFields1()),
            ContactUsButton(
              btnText: "next".tr(),
              ContactStep: 1,
            ),
            const SizedBox(
              height: 55,
            )
          ],
        ),
      ),
    );
  }
}
