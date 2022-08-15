import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class HomePageTableWidget extends StatelessWidget {
  HomePageTableWidget(
      {Key? key, required this.club_home, required this.club_away})
      : super(key: key);

  String club_home;
  String club_away;
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
          'assets/images/$club_away.png'), // TODO assosiate Club name with logo here
      leading: Image.asset(
          'assets/images/$club_home.png'), // TODO assosiate Club name with logo here
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            club_home.tr(),
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'JannaLT',
            ),
          ),
          Text(
            hourFormat,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontFamily: 'JannaLT',
            ),
          ),
          Text(
            club_away.tr(),
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'JannaLT',
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
              fontFamily: 'JannaLT',
            ),
          ),
        ],
      ),
    );
  }
}
