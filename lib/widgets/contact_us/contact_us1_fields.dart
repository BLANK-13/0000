import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import '../../constants.dart';
import 'contact_us_button.dart';

class ContactUsFields1 extends StatefulWidget {
  const ContactUsFields1({Key? key}) : super(key: key);
  static List<TextEditingController> textFields = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController()
  ];
  static List<String> errors = ['', '', '', ''];

  @override
  State<ContactUsFields1> createState() => _ContactUsFields1State();
}

class _ContactUsFields1State extends State<ContactUsFields1> {
  final List<String> fieldHints = [
    "enterFirstName".tr(),
    "enterLastName".tr(),
    'example@example.com',
    '05XXXXXXXXX'
  ];

  final List<String> fieldNames = [
    "firstName".tr(),
    "lastName".tr(),
    "email".tr(),
    "phone".tr(),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Form(
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      fieldNames[index],
                      style: const TextStyle(
                          color: mainColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'JannaLT'),
                    ),
                  ],
                ),
                ContactUsFields1.errors[index] == ''
                    ? Row(
                        children: [
                          Flexible(
                            child: _createTF(
                              context,
                              fieldHints[index],
                              ContactUsFields1.textFields[index],
                            ),
                          ),
                        ],
                      )
                    : Row(
                        children: [
                          Flexible(
                            child: _createTF(context, fieldHints[index],
                                ContactUsFields1.textFields[index],
                                correct: false),
                          ),
                        ],
                      ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      height: 35,
                      child: Text(
                        ContactUsFields1.errors[index],
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 13,
                          fontFamily: 'JannaLT',
                        ),
                      ),
                    ),
                  ],
                ),
                index == 3
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: ContactUsButton(
                              btnText: "next".tr(),
                              ContactStep: 1,
                              callBack: () => setState(() {}),
                            ),
                          ),
                        ],
                      )
                    : const SizedBox()
              ],
            ),
          );
        });
  }

  Widget _createTF(context, String hint, var controller,
      {bool correct = true}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        style: const TextStyle(
          color: mainColor,
          fontSize: 15,
        ),
        controller: controller,
        decoration: InputDecoration(
          fillColor: mainColor,
          hintText: hint,
          enabledBorder: UnderlineInputBorder(
            borderSide: correct
                ? const BorderSide(color: mainColor)
                : const BorderSide(color: Colors.red),
          ),
        ),
        cursorColor: Theme.of(context).primaryColor,
      ),
    );
  }
}

// We could do this instead but I thought this way is cleaner.
/* 
Row(
                children: const [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'الاسم الاول',
                    style: TextStyle(
                      color: mainColor
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    child: _createTF(
                        context, " ادخل الاسم الاول", TextEditingController()),
                  ),
                ],
              ),
              SizedBox(height: 35,),
               Row(
                children: const [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'الاسم الاول',
                    style: TextStyle(
                      color: mainColor
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    child: _createTF(
                        context, " ادخل الاسم الاول", TextEditingController()),
                  ),
                ],
              ),
              SizedBox(height: 35,),
               Row(
                children: const [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'الاسم الاول',
                    style: TextStyle(
                      color: mainColor
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    child: _createTF(
                        context, " ادخل الاسم الاول", TextEditingController()),
                  ),
                ],
              ),
              SizedBox(height: 35,),
               Row(
                children: const [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'الاسم الاول',
                    style: TextStyle(
                      color: mainColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    child: _createTF(
                        context, " ادخل الاسم الاول", TextEditingController()),
                  ),
                ],
              ), 
              */