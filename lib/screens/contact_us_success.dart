import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:trainee_task/constants.dart';

import '../widgets/app_bar_image.dart';

class ContactUsDone extends StatelessWidget {
  const ContactUsDone({Key? key, required this.id}) : super(key: key);
  final String? id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/bigIcon.png',
          height: 40,
          width: 61,
          // scale: .7,
        ),
        backgroundColor: const Color(0xFF0F1737),
        toolbarHeight: 100,
        centerTitle: true,
        flexibleSpace: AppBarImage(img: 'assets/images/app_bar.jpg'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Text(
            "success".tr(),
            style: const TextStyle(
                color: mainColor, fontSize: 22, fontFamily: 'JannaLT'),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            isAr ? 'رقم الطلب:' : 'Order number:',
            style: const TextStyle(
                fontSize: 17, color: Color(0xFF707070), fontFamily: 'JannaLT'),
          ),
        ),
        Text(
          '$id',
          style: const TextStyle(
              fontSize: 17, color: Color(0xFF707070), fontFamily: 'JannaLT'),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(child: Image.asset('assets/images/Image 2.png')),
        const SizedBox(
          height: 145,
        ),
      ]),
    );
  }
}
