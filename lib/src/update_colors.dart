import 'dart:math';
import 'package:flutter/material.dart';

///
Color updateColors() {
  const int _randomNumber = 256;
  final List<int> _randomList = [0, 0, 0, 0];
  final _random = Random();
  for (int i = 0; i < _randomList.length; i++) {
    _randomList[i] = _random.nextInt(_randomNumber);
  }
  final Color backcolor = Color.fromARGB(
    _randomList.first,
    _randomList[1],
    _randomList[2],
    _randomList[3],
  );
  
  return backcolor;
}
