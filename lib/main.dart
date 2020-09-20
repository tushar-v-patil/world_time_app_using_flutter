import 'dart:js';

import 'package:WordTime/pages/choose_location.dart';
import 'package:WordTime/pages/loading.dart';
import 'package:flutter/material.dart';
import 'package:WordTime/pages/home.dart';
// import 'package:WordTime/pages/choose_location.dart';
// import 'package:WordTime/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}

