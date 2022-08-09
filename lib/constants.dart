import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

String getFormattedDate(String date) {
  return DateFormat('dd MMMM yyyy', translator.activeLanguageCode)
      .format(DateTime.parse(date));
}

bool get isAr => translator.activeLanguageCode == 'ar';
const Color mainColor = Color(0xFF0F1737);

bool isEmail(String em) {
  String p =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  RegExp regExp = RegExp(p);

  return regExp.hasMatch(em);
}

bool isNumeric(String? s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null || int.tryParse(s) != null;
}

Widget buildErrorWidget(String error) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const <Widget>[
        Text(
          "Check your internet connection or some error on system",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
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
