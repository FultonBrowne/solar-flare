import 'package:flutter/material.dart';

class Destination {
  final int index;
  final String title;
  final IconData icon;
  final MaterialColor color;

  const Destination({
    @required this.index,
    @required this.title,
    @required this.icon,
    @required this.color,
  });
}