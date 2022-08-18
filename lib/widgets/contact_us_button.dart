import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:trainee_task/screens/contact_us1_page.dart';
import 'package:trainee_task/screens/contact_us_success.dart';

import '../constants.dart';
import '../models/contact_model.dart';
import '../screens/contact_us2_page.dart';
import '../widgets/contact_us1_fields.dart';
import 'contact_us2_fields.dart';

class ContactUsButton extends StatelessWidget {
  ContactUsButton({Key? key, required this.btnText, required this.ContactStep})
      : super(key: key);
  int ContactStep;
  String btnText;
  bool _isValid = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 319,
      child: ElevatedButton(
        onPressed: () {
          switch (ContactStep) {
            case 1:
              _isValid = true;
              if (ContactUsFields1.textFields[0].text.isEmpty) {
                _isValid = false;
                ContactUsFields1.errors[0] = "nameCheck".tr();
              } else if (ContactUsFields1.textFields[1].text.isEmpty) {
                _isValid = false;
                ContactUsFields1.errors[1] = "nameCheck".tr();
                ContactUsFields1.errors[0] = '';
              } else if (!isEmail(ContactUsFields1.textFields[2].text)) {
                _isValid = false;
                ContactUsFields1.errors[2] = "emailCheck".tr();
                ContactUsFields1.errors[0] = ContactUsFields1.errors[1] = '';
              } else if (((!(ContactUsFields1.textFields[3].text
                      .startsWith('05'))) ||
                  ContactUsFields1.textFields[3].text.length != 10 ||
                  !(isNumeric(ContactUsFields1.textFields[3].text)))) {
                _isValid = false;
                ContactUsFields1.errors[3] = "phoneCheck".tr();
                ContactUsFields1.errors[0] = ContactUsFields1.errors[1] =
                    ContactUsFields1.errors[2] = '';
              }

              if (_isValid) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactUs2Page()));
              } else {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactUs1Page()));
              }
              break;
            case 2:
              _isValid = true;
              if (ContactUsFields2.textFields[0].text.isEmpty) {
                _isValid = false;
                ContactUsFields2.errors[0] = "titleCheck".tr();
              } else if (ContactUsFields2.textFields[1].text.isEmpty) {
                _isValid = false;
                ContactUsFields2.errors[1] = "typeCheck".tr();
                ContactUsFields2.errors[0] = '';
              } else if (ContactUsFields2.textFields[2].text.isEmpty) {
                _isValid = false;
                ContactUsFields2.errors[2] = "messageCheck".tr();
                ContactUsFields2.errors[0] = ContactUsFields1.errors[1] = '';
              }
              if (_isValid) {
                int count = 0;
                var post = ContactModel(
                  firstName: ContactUsFields1.textFields[0].text,
                  lastName: ContactUsFields1.textFields[1].text,
                  email: ContactUsFields1.textFields[2].text,
                  mobile: ContactUsFields1.textFields[3].text,
                  messageTitle: ContactUsFields2.textFields[0].text,
                  messageType: ContactUsFields2.textFields[1].text,
                  messageDesc: ContactUsFields2.textFields[2].text,
                  attachment: '', // TODO send the file to API
                );
                // TODO change it to bloc
                postData(post).then((value) => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ContactUsDone(
                                id: value,
                              )),
                      (route) => count++ >= 2,
                    ));
              } else {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactUs2Page()));
              }
              break;
          }
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          )),
          backgroundColor: MaterialStateProperty.all<Color>(mainColor),
        ),
        child: Text(
          btnText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'JannaLT',
          ),
        ),
      ),
    );
  }
}
