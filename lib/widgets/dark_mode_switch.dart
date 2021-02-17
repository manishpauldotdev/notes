import 'package:flutter_switch/flutter_switch.dart';

import 'package:flutter/material.dart';

class DarkModeSwitch extends StatefulWidget {
  @override
  _DarkModeSwitchState createState() => _DarkModeSwitchState();
}

class _DarkModeSwitchState extends State<DarkModeSwitch> {
  bool isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      value: isSwitchOn,
      activeColor: Colors.black87,
      activeSwitchBorder: Border.all(
        color: Colors.black87,
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
          isSwitchOn = value;
        });
      },
    );
  }
}
