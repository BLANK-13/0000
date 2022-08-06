import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:trainee_task/screens/home_page.dart';

import 'package:trainee_task/screens/more_page.dart';
import 'package:trainee_task/screens/news_list_page.dart';

import '../constants.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  int currentP = 0;
  final List<Widget> pages = [
    const HomePage(),
    const HomePage(),
    const NewsListPage(),
    const NewsListPage(),
    const MorePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/home.png'),
              backgroundColor: mainColor,
              label: "more".tr()),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/leader_board.png'),
            backgroundColor: mainColor,
            label: "scheadule".tr(),
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/news.png'),
              backgroundColor: mainColor,
              label: "news".tr()),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/stats.png'),
              backgroundColor: mainColor,
              label: "stats".tr()),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/more.png'),
              backgroundColor: mainColor,
              label: "more".tr())
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[600],
        showUnselectedLabels: true,
        currentIndex: currentP,
        onTap: (index) {
          setState(() {
            currentP = index;
          });
        },
      ),
      body: IndexedStack(
        index: currentP,
        children: pages,
      ),
    );
  }
}


/*

 BottomNavigationBarItem(icon: Image(image: AssetImage(''),
              ),
              label: 'جدول الدوري'
              ),

              */