import 'package:flutter/material.dart';
import 'package:netflix_full_ui/utils/color_controller/color_controller.dart';
import 'package:netflix_full_ui/utils/image_controller/image_constant.dart';
import 'package:netflix_full_ui/view/blank_screen/blank_screen.dart';

class MyListScreen extends StatefulWidget {
  MyListScreen({super.key});

  @override
  State<MyListScreen> createState() => _MyListScreenState();
}

class _MyListScreenState extends State<MyListScreen> {
  //text style
  TextStyle netflixTextStyle = TextStyle(
    color: ColorConstant.textColor,
    fontWeight: FontWeight.w500,
    fontSize: 17.2,
  );

  SizedBox sizedBox = SizedBox(height: 10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      // body
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 47, left: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/logos_netflix-icon.png",
                    height: 57,
                    width: 53,
                  ),
                  SizedBox(width: 20),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BlankScreen(f: 3),
                            ),
                          );
                        },
                        child: Text(
                          "My List",
                          style: netflixTextStyle,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                        size: 14.4,
                      )
                    ],
                  ),
                ],
              ),
            ),
            GridView.builder(
              itemCount: ImageConstant.myList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(left: 10, bottom: 10, right: 10, top: 5),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                mainAxisExtent: 160,
              ),
              itemBuilder: (context, index) => Container(
                height: 161,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  image: DecorationImage(
                    image: AssetImage(ImageConstant.myList[index]),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
