import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:localize_and_translate/localize_and_translate.dart';


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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            hourFormat,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
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
