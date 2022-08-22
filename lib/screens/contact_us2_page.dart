import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import '../constants.dart';
import '../widgets/contact_us/contact_us2_fields.dart';

class ContactUs2Page extends StatelessWidget {
  const ContactUs2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color(0xFFF3F3F3),
        appBar: AppBar(
          leading: InkWell(
            child: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
            ),
            onTap: () => Navigator.pop(context),
          ),
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "info".tr(),
                        style: const TextStyle(
                            fontSize: 20,
                            fontFamily: 'JannaLT',
                            fontWeight: FontWeight.bold),
                      ),
                      Column(
                        children: [
                          Row(
                            children: const [
                              SizedBox(width: 55),
                              Text(
                                '2/2', // fix this
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF707070)),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "nextSend".tr(),
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF707070),
                                  fontFamily: 'JannaLT',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ]),
        ),
        body: Column(
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
              height: 10,
            ),
            const Flexible(child: ContactUsFields2()),
          ],
        ),
      ),
    );
  }
}
