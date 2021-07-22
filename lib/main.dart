import 'package:digital_stores/screens/MainPage.dart';
import 'package:digital_stores/screens/categories.dart';
import 'package:digital_stores/screens/settings/Settings.dart';
import 'package:flutter/material.dart';

void main()=>runApp(
  MaterialApp(
    theme: ThemeData.dark().copyWith(
      //TODO: if want to change any color of appBar, Floating button change here.
    ),
    routes: {
      MainPage.mainPage: (context)=>MainPage(),
      Categories.category: (context)=>Categories(),
    },
    initialRoute: MainPage.mainPage,
  )
);