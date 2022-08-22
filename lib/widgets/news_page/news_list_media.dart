import 'package:flutter/material.dart';

class NewsListMedia extends StatelessWidget {
  List<String> pics;
  NewsListMedia({Key? key, required this.pics}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pics.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            child: Image.network(pics[index]), //TODO make the edges rounded.
          ),
        );
      },
    );
  }
}
