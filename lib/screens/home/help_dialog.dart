import 'package:environ/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math';

class HelpDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            bottom: -40,
            left: -80,
            child: Transform(
              transform: Matrix4.rotationZ(pi / 12.0),
              alignment: Alignment.center,
              child: SvgPicture.asset(
                "assets/leavesbg.svg",
                color: Color.fromRGBO(0, 0, 0, 0.1),
                height: 400,
                width: 400,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              child: Column(
                children: [
                  Text(
                    'How to scan items',
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: black),
                  ),
                  SizedBox(height: 12.0),
                  Text(
                    'Place the item you want to scan on a surface with a quiet background. \n\nThe AI works best when the object is against a white background and place in the center.',
                    style: TextStyle(color: black),
                  ),
                  TextButton(
                    child: Text(
                      'Close',
                      style: linkButtonStyle,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
