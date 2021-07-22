import 'package:digital_stores/screens/MainPage.dart';
import 'package:digital_stores/screens/chat/Chats.dart';
import 'package:digital_stores/screens/nav_categories/categories.dart';
import 'package:digital_stores/screens/settings/Settings.dart';
import 'package:flutter/material.dart';

void main()=>runApp(
  MaterialApp(
  theme: ThemeData(
    //TODO: apply theme here.
  ),
    routes: {
      //TODO: add routes here
      MainPage.mainPage: (context)=>MainPage(),
      Categories.category: (context)=>Categories(),
      Chats.chats: (context)=>Chats(),
      Settings.settings: (context)=>Settings(),
    },
    initialRoute: MainPage.mainPage,
  )
);