import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);
  static const String settings = "Settings";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('This is settings page'),
      ),
    );
  }
}
