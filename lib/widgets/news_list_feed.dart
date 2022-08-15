import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:trainee_task/models/news_model.dart';
import 'package:trainee_task/screens/news_page.dart';

import '../constants.dart';

class NewsListFeed extends StatelessWidget {
  const NewsListFeed({Key? key, required this.news}) : super(key: key);
  final List<NewsModel> news; // get it from home.

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: news.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            const SizedBox(height: 8),
            Center(
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsPage(
                      news: NewsModel(
                          contentAr: news[index].contentAr,
                          contentEn: news[index].contentEn,
                          titleAr: news[index].titleAr,
                          titleEn: news[index].titleEn,
                          image: news[index].image,
                          createdAt: news[index].createdAt,
                          id: news[index].id),
                    ),
                  ),
                ),
                child: Container(
                  height: 120,
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(news[index].image),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Expanded(
                        flex: 14,
                        child: Container(
                          padding: isAr
                              ? const EdgeInsets.only(top: 0)
                              : const EdgeInsets.only(top: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "sportsLeague".tr(),
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF6A6666),
                                  fontFamily: 'JannaLT',
                                ),
                              ),
                              Flexible(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    isAr
                                        ? news[index].titleAr
                                        : news[index].titleEn,
                                    maxLines: 2,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontFamily: 'JannaLT',
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(), // was 20 for EN and empty for AR
                              Expanded(
                                child: Text(
                                  getFormattedDate(news[index].createdAt),
                                  style: const TextStyle(
                                    fontSize: 11,
                                    color: Color(0xFF7C7C7C),
                                    fontFamily: 'JannaLT',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
