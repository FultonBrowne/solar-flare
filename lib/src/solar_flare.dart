import 'package:flutter/material.dart';

import 'package:solar_flare/src/pages/home_page.dart';

class SolarFlare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solar Flare',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(title: 'Solar Flare'),
      
    );
  }
}