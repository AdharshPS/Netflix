import 'package:flutter/material.dart';

class ComingSoonNewArrival extends StatelessWidget {
  const ComingSoonNewArrival({
    super.key,
    required this.title,
    required this.image,
  });

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      color: Color(0xFF424242),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          children: [
            Container(
              height: 55,
              width: 113,
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
              ),
            ),
            SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New Arrival",
                  style: TextStyle(
                    fontSize: 13.72,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 13.72,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Nov 6",
                  style: TextStyle(
                    fontSize: 10.51,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(255, 255, 255, 0.48),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
