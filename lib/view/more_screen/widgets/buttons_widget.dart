import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({super.key, required this.buttonName});
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, bottom: 6),
      child: TextButton(
        onPressed: () {},
        child: Text(
          buttonName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.72,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
