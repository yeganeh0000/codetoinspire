import 'package:flutter/material.dart';

import '../constants/colors_text_theme.dart';


class SettingsButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double width;

  const SettingsButton({
    super.key,
    required this.text,
    required this.icon,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: colorDarkBlue,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: colorWhite,
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(color: colorWhite),
            ),
          ],
        ),
      ),
    );
  }
}