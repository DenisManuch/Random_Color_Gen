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

Color _textColor = Colors.white;

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
        backgroundColor: kBackgroundColor,
      ),
      body: Center(
        child: GestureDetector(
          child: Container(
            color: kBackgroundColor,
            key: const Key('Heythere'),
            alignment: Alignment.center,
            width: double.infinity,
            height: double.infinity,
            child: Text(
              mainText,
              key: Key('text'),
              style: TextStyle(
                color: _textColor,
                fontSize: 50,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          onTap: () => setState(() {
            kBackgroundColor = updateColors();
            _textColor = ThemeData.estimateBrightnessForColor(kBackgroundColor) ==
                    Brightness.light
                ? Colors.black
                : Colors.white;
          }),
        ),
      ),
    );
  }
}


/*
Color calculateTextColor(Color background) {
  return Brightness.estimateBrightnessForColor(background) == Brightness.light ? Colors.black : Colors.white;
}
*/