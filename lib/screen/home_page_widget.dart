import 'dart:math';
import 'package:flutter/material.dart';
import 'package:random_color_generation_app/src/constans.dart';

///
class HomePageWidget extends StatefulWidget {
  ///
  final String title;

  ///
  const HomePageWidget({Key? key, required this.title}) : super(key: key);
  @override
  State<HomePageWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageWidget> {
  Color correntColor = kBackgroundColor;
  Color correntTextColor = kPrimaryColor;

  final int _randomNumber = 256;
  void updateColor() {
    setState(() {
      final List<int> _randomList = [0, 0, 0, 0];
      final _random = Random();
      for (int i = 0; i < _randomList.length; i++) {
        _randomList[i] = _random.nextInt(_randomNumber);
      }
      correntColor = Color.fromARGB(
        _randomList.first,
        _randomList[1],
        _randomList[2],
        _randomList[3],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            color: kPrimaryColor,
            fontSize: 25,
          ),
        ),
        backgroundColor: correntColor,
      ),
      body: Center(
        child: GestureDetector(
          child: Container(
            color: correntColor,
            key: const Key('Heythere'),
            alignment: Alignment.center,
            width: double.infinity,
            height: double.infinity,
            child: const Text(
              mainText,
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 50,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          onTap: () => updateColor(),
        ),
      ),
    );
  }
}
