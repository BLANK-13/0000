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
              icon: const Icon(Icons.home),
              backgroundColor: mainColor,
              label: "home".tr()),
          BottomNavigationBarItem(
            icon: const Icon(Icons.storage_sharp),
            backgroundColor: mainColor,
            label: "scheadule".tr(),
          ),
          BottomNavigationBarItem(
              icon: const Icon(Icons.fiber_new_rounded),
              backgroundColor: mainColor,
              label: "news".tr()),
          BottomNavigationBarItem(
              icon: const Icon(Icons.star_sharp),
              backgroundColor: mainColor,
              label: "stats".tr()),
          BottomNavigationBarItem(
              icon: const Icon(Icons.more_horiz),
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