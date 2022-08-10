import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import '../constants.dart';

class HomePageTableWidget extends StatelessWidget {
  const HomePageTableWidget({Key? key}) : super(key: key);

  String get hourFormat =>
      DateFormat.Hm().format(DateTime.parse("2021-07-23T13:20:05.891Z"));
  String get formatDateForTable =>
      DateFormat('EEEE d MMMM ', translator.activeLanguageCode)
          .format(DateTime.parse("2021-07-23T13:20:05.891Z"));
  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      tileColor: Colors.white,
      trailing: Image.asset(
          'assets/images/Hilal_logo.png'), // TODO assosiate Club name with logo here
      leading: Image.asset(
          'assets/images/Hilal_logo.png'), // TODO assosiate Club name with logo here
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            isAr ? 'الهلال' : 'Hilal',
            style: const TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            hourFormat,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
          Text(
            isAr ? 'الهلال' : 'Hilal',
            style: const TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            formatDateForTable,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF7C7C7C),
            ),
          ),
        ],
      ),
    );
  }
}
