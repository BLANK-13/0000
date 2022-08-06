// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:trainee_task/widgets/bottom_bar.dart';

import 'constants.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // to make sure everything is there when we start the app.
  await translator.init(
    localeType: LocalizationDefaultType.asDefined,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/lang/',
  );
  runApp(LocalizedApp(child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  bool get isAr => translator.activeLanguageCode == 'ar';
  String get formatDate =>
      DateFormat('dd MMMM yyyy', translator.activeLanguageCode)
          .format(DateTime.parse("2021-07-23T13:20:05.891Z"));

  String get hourFormat =>
      DateFormat.Hm().format(DateTime.parse("2021-07-23T13:20:05.891Z"));
  bool isEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = RegExp(p);

    return regExp.hasMatch(em);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor:  mainColor),
      debugShowCheckedModeBanner: false,
      // home: const ContactUsDone(),
      // home: const ContactUs2Page(),
      home: const BottomBarWidget(),
      // home: ContactUs1Page(),
      // home: const MorePage(),
      // home: const SplashPage(),
      // home: const HomePage(),
      // home: const NewsListPage(),
      // home: NewsPage(
      //   news: NewsModel(
      //     createdAt: '2021-04-11T17:21:28.940Z',
      //     contentAr:
      //         'عندما يريد العالم أنيتكلّم ، فهو يتحدّث بلغة يونيكود. تسجّل الآن لحضور المؤتمر الدولي العاشر ليونيكود (Unicode Conference)، الذي سيعقد في 10-12 آذار 1997 بمدينة مَايِنْتْس، ألمانيا. و سيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنيت ويونيكود، حيث ستتم، على الصعيدين الدولي والمحلي على حد سواء مناقشة سبل استخدام يونكود في النظم القائمة وفيما يخص التطبيقات الحاسوبية، الخطوط، تصميم النصوص والحوسبة متعددة اللغعندما يريد العالم أن يتكلّم  ، فهو يتحدّث بلغة يونيكود. تسجّل الآن لحضور المؤتمر الدولي العاشر ليونيكود (Unicode Conference)، الذي سيعقد في 10-12 آذار 1997 بمدينة مَايِنْتْس، ألمانيا. و سيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنيت ويونيكود، حيث ستتم، على الصعيدين الدولي والمحلي على حد سواء مناقشة سبل استخدام يونكود في النظم القائمة وفيما يخص التطبيقات الحاسوبية، الخطوط، تصميم النصوص والحوسبة متعددة اللغات.عندما يريد العالم أن يتكلّم  ، فهو يتحدّث بلغة يونيكود. تسجّل الآن لحضور المؤتمر الدولي العاشر ليونيكود (Unicode Conference)، الذي سيعقد في 10-12 آذار 1997 بمدينة مَايِنْتْس، ألمانيا. و سيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنيت ويونيكود، حيث ستتم، على الصعيدين الدولي والمحلي على حد سواء مناقشة سبل استخدام يونكود في النظم القائمة وفيما يخص التطبيقات الحاسوبية، الخطوط، تصميم النصوص والحوسبة متعددة اللغات.عندما يريد العالم أن يتكلّم  ، فهو يتحدّث بلغة يونيكود. تسجّل الآن لحضور المؤتمر الدولي العاشر ليونيكود (Unicode Conference)، الذي سيعقد في 10-12 آذار 1997 بمدينة مَايِنْتْس، ألمانيا. و سيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنيت ويونيكود، حيث ستتم، على الصعيدين الدولي والمحلي على حد سواء مناقشة سبل استخدام يونكود في النظم القائمة وفيما يخص التطبيقات الحاسوبية، الخطوط، تصميم النصوص والحوسبة متعددة اللغات',
      //     contentEn:
      //         'When the world wants to talk, it speaks Unicode. Register now to attend the Tenth International Unicode Conference, which will be held on 10-12 March 1997 in Mainz, Germany. The conference will bring together experts from all sectors of the industry on the Internet and Unicode, where both international and local will discuss ways to use Unicode in existing systems and in terms of computer applications, fonts, text design and multilingual computing when the world wants to speak It speaks Unicode. Register now to attend the Tenth International Unicode Conference, which will be held on 10-12 March 1997 in Mainz, Germany. The conference will bring together experts from all sectors of the industry on the Internet and ',
      //     image:
      //         'https://dev.spl.sa/sites/default/files/2021-10/2523466-2120294578.jpg',
      //     titleAr: 'من الملاعب السعودية إلى منصة التتويج بكأس العالم..',
      //     titleEn: 'hello',
      //     id: '1',
      //   ),
      // ),
      localizationsDelegates: translator.delegates, // Android + iOS Delegates
      locale: translator.activeLocale, // Active locale
      supportedLocales: translator.locals(),
    );
  }

  

  Widget _createSizedBox(context, double size) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * size,
      height: MediaQuery.of(context).size.height * size,
    );
  }
}
