import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflix_full_ui/data_base/data_base.dart';
import 'package:netflix_full_ui/utils/color_controller/color_controller.dart';
import 'package:netflix_full_ui/utils/image_controller/image_constant.dart';
import 'package:netflix_full_ui/view/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:netflix_full_ui/view/home_screen/widgets/my_movies_list_builder.dart';
import 'package:netflix_full_ui/view/movies_screen/movies_screen.dart';
import 'package:netflix_full_ui/view/mylist_screen/mylist_sceen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int f = 0;
  //text style
  TextStyle netflixTextStyle = TextStyle(
    color: ColorConstant.textColor,
    fontWeight: FontWeight.w400,
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: ColorConstant.primaryBlack,
        // body
        body: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              CarouselSlider.builder(
                itemCount: DataBase.childLogo.length,
                itemBuilder: (context, index, realIndex) => Container(
                  height: 415,
                  width: double.infinity,
                  child: Image.asset(
                    // ImageConstant.homePageImage,
                    ImageConstant.carousalImage[index],
                    fit: BoxFit.fill,
                  ),
                ),
                options: CarouselOptions(
                  // reverse: true,
                  height: 415,
                  autoPlay: true,
                  viewportFraction: 1,
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
                padding: const EdgeInsets.only(top: 57, left: 3, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/logos_netflix-icon.png",
                      height: 57,
                      width: 53,
                    ),
                    // Column(
                    //   children: [
                    //     Container(
                    //       height: 50,
                    //       child: TabBar(
                    //         labelColor: Colors.white,
                    //         tabs: [
                    //           Tab(text: "TV Shows"),
                    //           Tab(text: "Movies"),
                    //           Tab(text: "My List"),
                    //         ],
                    //       ),
                    //     ),
                    //     Expanded(
                    //       child: TabBarView(children: [
                    //         TvShowsScreen(),
                    //         MoviesScreen(),
                    //         MyListScreen(),
                    //       ]),
                    //     ),
                    //   ],
                    // )
                    TextButton(
                      onPressed: () {
                        f = 1;
                        BottomNavigationBarScreen(
                          f: f,
                        );
                      },
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => TvShowsScreen(),
                      //   ),
                      // ),
                      child: Text(
                        "TV Shows",
                        style: netflixTextStyle,
                      ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MoviesScreen(),
                        ),
                      ),
                      child: Text(
                        "Movies",
                        style: netflixTextStyle,
                      ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyListScreen(),
                        ),
                      ),
                      child: Text(
                        "My List",
                        style: netflixTextStyle,
                      ),
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

            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: ImageConstant.homePageMap.length,
              itemBuilder: (context, index) => index == 3
                  ? MyMoviesListBuilderWidget(
                      title: "Netflix Originals",
                      imageList: ImageConstant.netflixOriginals,
                      visible: false,
                      height: 251,
                      width: 154.04,
                      // height: 200,
                    )
                  : MyMoviesListBuilderWidget(
                      title: ImageConstant.homePageMap[index]["title"],
                      imageList: ImageConstant.homePageMap[index]
                          ["image"], // width: 150,
                    ),
            ),

            //home page using listview.builder

            // ListView.builder(
            //   shrinkWrap: true,
            //   itemCount: ImageConstant.homePageMap.length,
            //   itemBuilder: (context, index) => MyMoviesListBuilderWidget(
            //     title: ImageConstant.homePageMap[index]["title"],
            //     shape: BoxShape.circle,
            //     imageList: ImageConstant.homePageMap[index]["image"],
            //     size: 26.75,
            //     height: 102,
            //     width: 102,
            //   ),
            // ),

//dead code
            // Padding(
            //   padding: const EdgeInsets.only(left: 10),
            //   child: Text(
            //     "previews",
            //     style: TextStyle(
            //       color: ColorConstant.textColor,
            //       fontSize: 25,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            // Expanded(
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: DataBase.childLogo.length,
            //     itemBuilder: (context, index) => Padding(
            //       padding: EdgeInsets.all(8.0),
            //       child: CircleAvatar(
            //         radius: 50,
            //         child: Image.asset(
            //           DataBase.childLogo[index],
            //           fit: BoxFit.fill,
            //         ),
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
