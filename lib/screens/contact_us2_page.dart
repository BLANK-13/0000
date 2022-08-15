import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:trainee_task/widgets/contact_us2_attach.dart';

import '../constants.dart';
import '../widgets/contact_us2_fields.dart';
import '../widgets/contact_us_button.dart';

class ContactUs2Page extends StatelessWidget {
  const ContactUs2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                ListTile(
                  title: Row(
                    children: [
                      const SizedBox(width: 30),
                      Text(
                        "info".tr(),
                        style: const TextStyle(
                            fontSize: 20, fontFamily: 'JannaLT'),
                      ),
                    ],
                  ),
                  trailing: Expanded(
                    child: Column(
                      children: [
                        const Text(
                          '2/2',
                          style:
                              TextStyle(fontSize: 13, color: Color(0xFF707070)),
                        ),
                        Text(
                          "nextSend".tr(),
                          style: const TextStyle(
                              fontSize: 15,
                              color: Color(0xFF707070),
                              fontFamily: 'JannaLT'),
                        ),
                      ],
                    ),
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
              height: 40, //20 before
            ),
            const Flexible(child: ContactUsFields2()),
            Column(
              children: const [ContactUsAttach()],
            ),
            isAr ? const SizedBox(height: 55) : const SizedBox(height: 80),
            ContactUsButton(
              btnText: "send".tr(),
              ContactStep: 2,
            ),
            const SizedBox(height: 20) //was 40
          ],
        ),
      ),
    );
  }
}
