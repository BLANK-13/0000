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
                height: 25,
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
            labelColor:  mainColor,
            indicatorColor:  mainColor,
            tabs: [
              Row(
                children:  [
                  SizedBox(
                    height: 50,
                    width: 70,
                  ),
                  Text(
                    "data".tr(),
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              Row(
                children:  [
                  SizedBox(
                    height: 50,
                    width: 80,
                  ),
                  Flexible(
                    child: Text(
                      "nextInfo".tr(),
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
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
                  style: TextStyle(fontSize: 13, color: Color(0xFF707070)),
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
              style: TextStyle(
                color: mainColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
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
