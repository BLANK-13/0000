import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import '../constants.dart';

class ContactUsFields1 extends StatelessWidget {
  ContactUsFields1({Key? key}) : super(key: key);
  final List<String> fields = [
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
  static List<TextEditingController> textFields = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController()
  ];
  static List<String> errors = ['', '', '', ''];

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
                Row(
                  children: [
                    Flexible(
                      child:
                          _createTF(context, fields[index], textFields[index]),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      height: 35,
                      child: Text(
                        errors[index],
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 13,
                          fontFamily: 'JannaLT',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }

  Widget _createTF(
    context,
    String lable,
    var controller,
  ) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: TextField(
          style: const TextStyle(
            color: mainColor,
            fontSize: 15,
          ),
          controller: controller,
          decoration: InputDecoration(
            fillColor: Colors.transparent,
            hintText: lable,
          ),
          cursorColor: Theme.of(context).primaryColor,
        ),
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