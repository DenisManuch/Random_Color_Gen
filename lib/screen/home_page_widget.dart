import 'package:flutter/material.dart';
import 'package:random_color_generation_app/src/constans.dart';
import 'package:random_color_generation_app/src/update_colors.dart';

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
          onTap: () => setState(() {
            correntColor = updateColors();
          }), //updateColors(),
        ),
      ),
    );
  }
}
