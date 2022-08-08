import 'package:flutter/material.dart';

class HomePageLastNews extends StatelessWidget {
  final String img;
  final String title;
  final String league;
  const HomePageLastNews({
    Key? key,
    required this.img,
    required this.title,
    required this.league,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 500,
          margin: const EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: img.substring(0, 4) == 'http'
                ? Image.network(img)
                : Image.asset(img),
          ),
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
              height: 25,
            ),
            Text(
              league,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF6A6666),
              ),
            ),
          ],
        ),
        ListTile(
          visualDensity: const VisualDensity(vertical: -4),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
