import 'package:flutter/material.dart';
import 'package:netflix_full_ui/utils/color_controller/color_controller.dart';

class DownloadsScreen extends StatefulWidget {
  const DownloadsScreen({super.key});

  @override
  State<DownloadsScreen> createState() => _DownloadsScreenState();
}

class _DownloadsScreenState extends State<DownloadsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorConstant.primaryBlack,
        title: Text(
          "Smart Downloads",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 14.72),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Introducing Downloads For You",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 19.63,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam enim non posuere pulvinar diam.",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.78,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Center(
              child: Container(
                height: 177,
                width: 177,
                decoration: BoxDecoration(
                  color: Color(0xFF424242),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 40.89,
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color(0xFF0071EB),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "SETUP",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.86,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Center(
              child: SizedBox(
                height: 33,
                width: 259,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0xFF424242),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)))),
                  onPressed: () {},
                  child: Text(
                    "Find Something To Download",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16.71,
                      letterSpacing: -0.05,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
