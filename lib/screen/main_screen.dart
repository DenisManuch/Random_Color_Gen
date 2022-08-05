import 'package:flutter/material.dart';
import 'package:random_color_generation_app/screen/home_page_widget.dart';
import 'package:random_color_generation_app/src/constans.dart';

///
class MainScreen extends StatelessWidget {
  ///
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random Color',
      home: HomePageWidget(title: title),
    );
  }
}
///
