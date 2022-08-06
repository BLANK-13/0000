import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:trainee_task/bloc/home_news_bloc/home_news_bloc.dart';
import 'package:trainee_task/repo/repository.dart';
import 'package:trainee_task/widgets/app_bar_image.dart';
import 'package:trainee_task/widgets/home_page_video.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

import '../constants.dart';
import '../widgets/home_page_lastNewsImage.dart';
import '../widgets/home_page_poll.dart';
import '../widgets/home_page_sponsors.dart';
import '../widgets/home_page_table.dart';
import '../widgets/home_page_tweets.dart';
import 'news_list_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late http.Client client;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    client = http.Client();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeNewsBloc(newsRepository: NewsRepository(client))
        ..add(GetLatest()),
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F3F3),
        appBar: AppBar(
            title: Image.asset(
              'assets/images/bigIcon.png',
              height: 40,
              width: 61,
            ),
            backgroundColor: mainColor,
            toolbarHeight: 100,
            centerTitle: true,
            flexibleSpace: AppBarImage(img: 'assets/images/NewsCels.png')),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  const SizedBox(width: 10),
                  Flexible(
                    child: Text(
                      "lastNews".tr(),
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  isAr
                      ? const SizedBox(width: 278)
                      : const SizedBox(width: 258),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NewsListPage()));
                    },
                    child: Text(
                      "more".tr(),
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xFF0070AC),
                      ),
                    ),
                  ),
                ],
              ),
              BlocBuilder<HomeNewsBloc, HomeNewsState>(
                builder: (context, state) {
                  if (state is HomeNewsInitial) {
                    return const HomePageLastNews(
                      img: 'assets/images/initial.jpg',
                      title: '',
                      league: '',
                    );
                  } else if (state is HomeNewsFailure) {
                    return Column(
                      children: [
                        Text(state.message),
                        ElevatedButton(
                            onPressed: () =>
                                BlocProvider.of<HomeNewsBloc>(context)
                                    .add(GetLatest()),
                            child: Text("reload".tr()))
                      ],
                    );
                  } else if (state is HomeNewsSuccess) {
                    return HomePageLastNews(
                      img: state.news[0].image,
                      title:
                          isAr ? state.news[0].titleAr : state.news[0].titleEn,
                      league: "sportsLeague".tr(),
                    );
                  }
                  return const SizedBox();
                },
              ),

              const SizedBox(height: 30),
              Row(
                children: [
                  const SizedBox(width: 10),
                  Flexible(
                    child: Text(
                      "nextMatch".tr(),
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  isAr
                      ? const SizedBox(width: 245)
                      : const SizedBox(width: 225),
                  InkWell(
                    onTap: () => launchUrl(
                        Uri.parse('https://spl.sa/en/season-matches-schedule')),
                    child: Text(
                      "more".tr(),
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xFF0070AC),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const HomePageTableWidget(),
              const SizedBox(height: 1),
              const HomePageTableWidget(),
              const SizedBox(height: 1),
              const HomePageTableWidget(), //matches table
              const SizedBox(height: 30),
              Row(
                children: [
                  const SizedBox(width: 13),
                  Flexible(
                    child: Text(
                      "latestTweets".tr(),
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  isAr
                      ? const SizedBox(width: 258)
                      : const SizedBox(width: 228),
                  InkWell(
                    onTap: () =>
                        launchUrl(Uri.parse('https://twitter.com/SPL')),
                    child: Text(
                      "more".tr(),
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xFF0070AC),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const HomePageTweets(),
              const SizedBox(height: 1),
              const HomePageTweets(),
              const SizedBox(height: 30),
              Row(children: [
                const SizedBox(width: 10),
                Text(
                  "predict".tr(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ]),

              const SizedBox(height: 10),
              const HomePagePoll(),
              const SizedBox(height: 30),

              Row(children: [
                const SizedBox(width: 10),
                Text(
                  "videos".tr(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ]),
              Container(
                height: 255,
                width: double.infinity,
                color: Colors.white,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  width: 343,
                  height: 195,
                  child: HomePageVideo(),
                ), //NewsPageVideo(), <- see the problem of the youtube player.
              ),

              const SizedBox(height: 30),
              Row(children: [
                const SizedBox(width: 10),
                Text(
                  "sponsors".tr(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ]),
              const HomePageSponsors(),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
