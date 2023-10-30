import 'package:flutter/material.dart';
import 'package:netflix_full_ui/utils/color_controller/color_controller.dart';
import 'package:netflix_full_ui/view/home_screen/home_screen.dart';
import 'package:netflix_full_ui/view/movies_screen/movies_screen.dart';
import 'package:netflix_full_ui/view/mylist_screen/mylist_sceen.dart';
import 'package:netflix_full_ui/view/tv_shows_screen/tv_shows_screen.dart';

class BlankScreen extends StatefulWidget {
  const BlankScreen({super.key, required this.f});

  final f;

  @override
  State<BlankScreen> createState() => _BlankScreenState();
}

class _BlankScreenState extends State<BlankScreen> {
  double height = double.infinity;
  TextStyle normalStyle = TextStyle(
    color: ColorConstant.textColor,
    fontWeight: FontWeight.w400,
    fontSize: 24.68,
  );
  TextStyle selectedStyle = TextStyle(
    color: ColorConstant.textColor,
    fontWeight: FontWeight.w600,
    fontSize: 29.68,
  );

  Widget getWidget() {
    if (widget.f == 1) {
      return TvShowsScreen();
    } else if (widget.f == 2) {
      return MoviesScreen();
    } else {
      return MyListScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 0,
          left: 0,
          top: 0,
          bottom: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                child: Text(
                  "All",
                  style: normalStyle,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TvShowsScreen(),
                    ),
                  );
                },
                child: Text(
                  "TV Shows",
                  style: widget.f == 1 ? selectedStyle : normalStyle,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MoviesScreen(),
                    ),
                  );
                },
                child: Text(
                  "Movies",
                  style: widget.f == 2 ? selectedStyle : normalStyle,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyListScreen(),
                    ),
                  );
                },
                child: Text(
                  "My List",
                  style: widget.f == 3 ? selectedStyle : normalStyle,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 50,
          child: GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => getWidget(),
              ),
            ),
            child: Container(
              width: 69,
              height: 69,
              decoration: BoxDecoration(
                color: ColorConstant.textColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.close,
                color: ColorConstant.primaryBlack,
                size: 36,
              ),
            ),
          ),
        )
      ],
    );
  }
}
