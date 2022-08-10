import 'package:flutter/material.dart';
import 'package:trainee_task/screens/contact_us1_page.dart';

import '../constants.dart';

class MorePageOptions extends StatelessWidget {
  MorePageOptions({Key? key}) : super(key: key);
  static List<Color> col = [
    Colors.white,
    Colors.white,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.white,
    Colors.red,
    Colors.green
  ];
  final List<String> optionsAR = [
    "دليل النوادي",
    "دليل الملاعب",
    "من نحن",
    "الأنظمة واللوائح",
    "اللجان",
    "تواصل معنا",
    "شارك التطبيق",
    "الاشتراك بالنشرة الاخبارية",
  ];
  final List<String> optionsEN = [
    "Clubs Guide",
    "Stadiums Guide",
    "About Us",
    "Rules and Regulations",
    "Committees",
    'Contact Us',
    "Share App",
    "Subscribe to Newsletter"
  ];

  static List<Widget> pages = [
    const ContactUs1Page(),
    const ContactUs1Page(),
    const ContactUs1Page(),
    const ContactUs1Page(),
    const ContactUs1Page(),
    const ContactUs1Page(),
    const ContactUs1Page(),
    const ContactUs1Page(),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: 8,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 2,
                    color: col[index],
                    height: 35,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => pages[index]))
                      },
                      child: Text(
                        isAr ? optionsAR[index] : optionsEN[index],
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFE0E0E0),
                          fontFamily: 'JannaLT',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12)
            ],
          );
        });
  }
}
