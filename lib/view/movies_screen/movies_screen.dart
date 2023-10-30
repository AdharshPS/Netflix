import 'package:flutter/material.dart';
import 'package:netflix_full_ui/utils/color_controller/color_controller.dart';
import 'package:netflix_full_ui/utils/image_controller/image_constant.dart';
import 'package:netflix_full_ui/view/blank_screen/blank_screen.dart';
import 'package:netflix_full_ui/view/home_screen/widgets/my_movies_list_builder.dart';

class MoviesScreen extends StatefulWidget {
  MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  //text style
  TextStyle netflixTextStyle = TextStyle(
    color: ColorConstant.textColor,
    fontWeight: FontWeight.w500,
    fontSize: 17.2,
  );
  TextStyle myListTextStyle = TextStyle(
    color: ColorConstant.textColor,
    fontWeight: FontWeight.w400,
    fontSize: 13.64,
  );
  // TextStyle topTabTextStyle =
  //     TextStyle(color: ColorConstant.textColor, fontSize: 16);

  //sized box
  SizedBox sizedBox = SizedBox(height: 10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      // body
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Container(
              height: 415,
              width: double.infinity,
              child: Image.asset(
                ImageConstant.moviePageImage,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 415,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    ColorConstant.primaryBlack.withOpacity(.4),
                    Colors.transparent.withOpacity(.1),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 57, left: 10, right: 30),
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
                              builder: (context) => BlankScreen(f: 2),
                            ),
                          );
                        },
                        child: Text(
                          "Movies",
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
                  SizedBox(width: 20),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "All genres",
                          style: TextStyle(
                            color: ColorConstant.textColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 13.2,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                        size: 10.8,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset(
                      "assets/images/Group 16.png",
                      height: 15,
                      width: 15,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "#2 in Nigeria Today",
                    style: TextStyle(
                        color: ColorConstant.textColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 13.72),
                  ),
                ],
              ),
            ),
          ]),
          SizedBox(height: 10),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 130,
                  child: Column(
                    children: [
                      Icon(
                        Icons.add,
                        size: 24,
                        color: ColorConstant.textColor,
                      ),
                      Text(
                        "My List",
                        style: myListTextStyle,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 130,
                  decoration: BoxDecoration(
                    color: Color(0xFFC4C4C4),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.play_arrow_sharp,
                        color: ColorConstant.primaryBlack,
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Play",
                        style: TextStyle(
                          color: ColorConstant.primaryBlack,
                          fontSize: 20.46,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 130,
                  child: Column(
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: ColorConstant.textColor,
                        size: 24,
                      ),
                      Text(
                        "Info",
                        style: myListTextStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          MyMoviesListBuilderWidget(
            title: "Previews",
            shape: BoxShape.circle,
            imageList: ImageConstant.previews,
            size: 26.75,
            height: 102,
            width: 102,
          ),
          MyMoviesListBuilderWidget(
            title: "Continue watching For Emalano",
            imageList: ImageConstant.continueWatching,
            visible: true,
            height: 177,
            // height: 200,
          ),
          MyMoviesListBuilderWidget(
            title: "Popular on Netflix",
            imageList: ImageConstant.popularOnNetflix,
          ),
        ],
      ),
    );
  }
}
