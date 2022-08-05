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
  Color _correntColor = kBackgroundColor;
  Color correntTextColor = kPrimaryColor;

  final int _randomNumber = 256;
  void updateColor() {
    setState(() {
      final _random = Random();
      final _randomR = Random();
      final _randomG = Random();
      final _randomB = Random();
      
      _correntColor = Color.fromARGB(
        _random.nextInt(_randomNumber),
        _randomR.nextInt(_randomNumber),
        _randomG.nextInt(_randomNumber),
        _randomB.nextInt(_randomNumber),
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
        backgroundColor: _correntColor,
      ),
      body: Center(
        child: GestureDetector(
          child: Container(
            color: _correntColor,
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
