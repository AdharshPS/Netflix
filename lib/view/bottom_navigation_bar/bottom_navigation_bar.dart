import 'package:flutter/material.dart';
import 'package:netflix_full_ui/utils/color_controller/color_controller.dart';
import 'package:netflix_full_ui/view/coming_soon_screen/coming_soon_screen.dart';
import 'package:netflix_full_ui/view/downloads_screen/downloads_screen.dart';
import 'package:netflix_full_ui/view/home_screen/home_screen.dart';
import 'package:netflix_full_ui/view/more_screen/more_screen.dart';
import 'package:netflix_full_ui/view/search_screen/search_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int indexNum = 0;
  List tabWidgets = [
    HomeScreen(),
    SearchScreen(),
    ComingSoonScreen(),
    DownloadsScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF121212),
        unselectedItemColor: Color(0xFF8C8787),
        selectedItemColor: Colors.white,
        unselectedFontSize: 8.2,
        selectedFontSize: 8.2,
        selectedIconTheme: IconThemeData(size: 24),
        unselectedIconTheme: IconThemeData(size: 24),
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            label: "Comming soon",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: "Downloads",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "More",
          ),
        ],
        currentIndex: indexNum,
        onTap: (index) {
          setState(() {
            indexNum = index;
          });
        },
      ),
      body: Center(
        child: tabWidgets.elementAt(indexNum),

        //child: tabWidgets[indexNum],
      ),
    );
  }
}
