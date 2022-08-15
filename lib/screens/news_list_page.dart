import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:trainee_task/bloc/news_list_bloc/news_bloc.dart';

import 'package:trainee_task/repo/repository.dart';
import 'package:trainee_task/widgets/news_list_media.dart';
import 'package:http/http.dart' as http;

import '../constants.dart';
import '../widgets/app_bar_image.dart';
import '../widgets/news_list_feed.dart';
import '../widgets/news_list_media.dart';

class NewsListPage extends StatefulWidget {
  // final NewsModel newsList;, required this.newsList
  const NewsListPage({Key? key}) : super(key: key);

  @override
  State<NewsListPage> createState() => _NewsListPageState();
}

class _NewsListPageState extends State<NewsListPage> {
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
      create: (context) => NewsBloc(newsRepository: NewsRepository(client))
        ..add(OnGetNews()), // make an instance and trigger onGetNews
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: AppBarImage(img: 'assets/images/app_bar.png'),
            title: Image.asset(
              'assets/images/bigIcon.png',
              height: 40,
              width: 61,
            ),
            backgroundColor: mainColor,
            toolbarHeight: 66,
            centerTitle: true,
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: "news".tr()),
                Tab(text: "photos".tr()),
                Tab(text: "videos".tr()),
              ],
            ),
          ),
          //bottomNavigationBar: const BottomBarWidget(),
          body: TabBarView(
            children: [
              BlocBuilder<NewsBloc, NewsState>(
                builder: (context, state) {
                  if (state is NewsLoading) {
                    return const Center(
                        child: CircularProgressIndicator(
                      color: mainColor,
                    ));
                  } else if (state is NewsFailure) {
                    return Column(
                      children: [
                        Text(state.message),
                        ElevatedButton(
                            onPressed: () => BlocProvider.of<NewsBloc>(context)
                                .add(OnGetNews()),
                            child: Text("reload".tr()))
                      ],
                    );
                  } else if (state is NewsSuccess) {
                    return NewsListFeed(news: state.news);
                  }
                  return const SizedBox();
                },
              ),
              NewsListMedia(pics: const [
                'https://dev.spl.sa/sites/default/files/2021-10/2523466-2120294578.jpg',
                'https://dev.spl.sa/sites/default/files/2021-09/IMG_20210228_004916_372_0.jpg',
                'https://dev.spl.sa/sites/default/files/2021-10/D585DF2D-0D27-43FC-83AF-F01C35DAFD76.jpeg',
                'https://dev.spl.sa/sites/default/files/2021-10/840F3260-C5F7-4796-BE4B-272BA813891D.jpeg',
                'https://dev.spl.sa/sites/default/files/2021-10/5A450835-F9D0-497D-B394-E1EA31F747EF.jpeg',
                'https://dev.spl.sa/sites/default/files/2021-10/A6C20159-1930-4104-B4D3-A81BB94B840E.jpeg'
              ]),
              NewsListMedia(pics: const [
                'https://dev.spl.sa/sites/default/files/2021-10/2523466-2120294578.jpg',
                'https://dev.spl.sa/sites/default/files/2021-09/IMG_20210228_004916_372_0.jpg',
                'https://dev.spl.sa/sites/default/files/2021-10/D585DF2D-0D27-43FC-83AF-F01C35DAFD76.jpeg',
                'https://dev.spl.sa/sites/default/files/2021-10/840F3260-C5F7-4796-BE4B-272BA813891D.jpeg',
                'https://dev.spl.sa/sites/default/files/2021-10/5A450835-F9D0-497D-B394-E1EA31F747EF.jpeg',
                'https://dev.spl.sa/sites/default/files/2021-10/A6C20159-1930-4104-B4D3-A81BB94B840E.jpeg'
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
