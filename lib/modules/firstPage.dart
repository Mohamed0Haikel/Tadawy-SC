import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:tdaway/modules/thirdPadge.dart';
import 'package:tdaway/modules/scondPadge.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/firstOne.gif'),
            SizedBox(height: 20),
            TyperAnimatedTextKit(
              isRepeatingAnimation: false,
              speed: Duration(milliseconds: 120),
              text: ['Welcome TADAWY Medical App!'],
              textStyle: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            TyperAnimatedTextKit(
              isRepeatingAnimation: false,
              speed: Duration(milliseconds: 60),
              text: [
                'A place to access your medical history and book appointments with our esteemed doctors.'
              ],
              textAlign: TextAlign.center,
              textStyle: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 40),
            RollingSwitchButton(
              text: 'Get Started',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class RollingSwitchButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const RollingSwitchButton({
    required this.text,
    required this.onPressed,
  });

  @override
  _RollingSwitchButtonState createState() => _RollingSwitchButtonState();
}

class _RollingSwitchButtonState extends State<RollingSwitchButton> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      width: 120.0,
      height: 40.0,
      valueFontSize: 16.0,
      toggleSize: 30.0,
      value: switchValue,
      borderRadius: 20.0,
      padding: 4.0,
      activeText: widget.text,
      inactiveText: widget.text,
      activeTextColor: Colors.white,
      inactiveTextColor: Colors.white,
      activeColor: Colors.lightBlue,
      inactiveColor: Colors.grey,
      showOnOff: false,
      onToggle: (value) {
        setState(() {
          switchValue = value;
        });
        if (value) {
          widget.onPressed();
        }
      },
    );
  }
}