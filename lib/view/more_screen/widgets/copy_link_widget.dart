import 'package:flutter/material.dart';

class CopyLinkWidget extends StatelessWidget {
  const CopyLinkWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 36,
          height: 33.6,
          child: Icon(
            Icons.more_horiz_outlined,
            color: Colors.white,
            size: 37,
          ),
        ),
        Text(
          "More",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.72,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
