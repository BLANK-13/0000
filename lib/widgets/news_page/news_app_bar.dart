import 'package:flutter/material.dart';

class NewsAppBarWidget extends StatelessWidget {
  final String image;
  const NewsAppBarWidget({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return FlexibleSpaceBar(
        titlePadding: const EdgeInsets.only(bottom: 10),
        title: constraints.biggest.height <= 90
            ? Image.asset(
                'assets/images/5TRrpRAGc.png',
                height: 40,
                width: 60,
              )
            : const SizedBox(),
        centerTitle: true,
        background: Image.network(
          image,
          //height: 150,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      );
    });
  }
}
