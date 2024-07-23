

import 'dart:ui';

import 'package:csi_project/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {

  final String text;
  final Color color; // Optional color parameter for customization
  final VoidCallback onPressed; // Callback function for button press

  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.color, //this.color = Colors.blue,  // Set a default color
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text
      ,style: TextStyle(color:Colors.white)),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Use the provided color
        // Set text color to white
      ),

    );
  }
}
