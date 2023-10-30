import 'package:flutter/material.dart';

class ComingSoonRemindMe extends StatelessWidget {
  const ComingSoonRemindMe(
      {super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 385,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 195,
            width: double.infinity,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 24,
                        ),
                        Text(
                          "Remind Me",
                          style: TextStyle(
                            fontSize: 11.13,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(255, 255, 255, 0.83),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 40),
                    Column(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 24,
                        ),
                        Text(
                          "Share",
                          style: TextStyle(
                            fontSize: 11.13,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(255, 255, 255, 0.83),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Season 1 Coming December 14",
                  style: TextStyle(
                    fontSize: 11.4,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(255, 255, 255, 0.83),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18.66,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(255, 255, 255, 0.83),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam enim non posuere pulvinar diam.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 11.14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(255, 255, 255, 0.83),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Steamy  .  Soapy  .  SlowBurn  .  Suspenseful  .  Teen  .  Mystery",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 11.4,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
