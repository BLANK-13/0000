import 'package:flutter/material.dart';

class HomePagePoll extends StatelessWidget {
  const HomePagePoll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 186,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Container(
                  width: 100,
                  height: 80,
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: const Color(0xFFD1D1D1))),
                  child: Image.asset('assets/images/Hilal_logo.png'),
                ),
              ),
              Flexible(
                child: Container(
                  width: 100,
                  height: 80,
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: const Color(0xFFD1D1D1))),
                  child: Image.asset('assets/images/Hilal_logo.png'),
                ),
              ),
              Flexible(
                child: Container(
                  width: 100,
                  height: 80,
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: const Color(0xFFD1D1D1))),
                  child: Image.asset('assets/images/Hilal_logo.png'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                "الهلال",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'JannaLT',
                ),
              ),
              Text(
                "الهلال",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'JannaLT',
                ),
              ),
              Text(
                "الهلال",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'JannaLT',
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                ' %30',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF7C7C7C),
                  fontFamily: 'JannaLT',
                ),
              ),
              Text(
                ' %30',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF7C7C7C),
                  fontFamily: 'JannaLT',
                ),
              ),
              Text(
                ' %30',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF7C7C7C),
                  fontFamily: 'JannaLT',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
