import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:trainee_task/constants.dart';
import 'package:trainee_task/widgets/news_app_bar.dart';

import '../models/news_model.dart';

class NewsPage extends StatelessWidget {
  final NewsModel news;
  const NewsPage({Key? key, required this.news}) : super(key: key);

  String get formatDate =>
      DateFormat('dd MMMM yyyy', translator.activeLanguageCode)
          .format(DateTime.parse(news.createdAt));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: mainColor,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_rounded),
              onPressed: () => Navigator.pop(context),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {
                  //TODO: share button
                },
              ),
            ],
            pinned: true,
            snap: false,
            floating: true,
            expandedHeight: 250,
            flexibleSpace: NewsAppBarWidget(image: news.image),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Text(
                  isAr ? news.titleAr : news.titleEn,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "sportsLeague".tr(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFF6A6666),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  formatDate,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Color(0xFF7C7C7C),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  isAr ? news.contentAr : news.contentEn,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF131314),
                  ),
                ),
              ]),
            ),
          ),

          //InkWell()  makes any widget clickable
          // IMAGE HERE

          // Space

          // title text

          // space

          // mini description text

          // space

          // date

          //space

          // content
        ],
      ),
    );
  }
}
