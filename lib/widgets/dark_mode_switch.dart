import 'package:provider/provider.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'package:flutter/material.dart';

import '../models/dark_theme_provider.dart';

class DarkModeSwitch extends StatefulWidget {
  @override
  _DarkModeSwitchState createState() => _DarkModeSwitchState();
}

class _DarkModeSwitchState extends State<DarkModeSwitch> {
  bool isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return FlutterSwitch(
      value: themeChange.darkTheme,
      activeColor: Colors.black87,
      activeSwitchBorder: Border.all(
        color: Colors.white70,
      ),
      inactiveToggleBorder: Border.all(
        color: Colors.black87,
      ),
      inactiveColor: Colors.white70,
      inactiveSwitchBorder: Border.all(
        color: Colors.black87,
      ),
      onToggle: (value) {
        setState(() {
          themeChange.darkTheme = value;
        });
      },
    );
  }
}
