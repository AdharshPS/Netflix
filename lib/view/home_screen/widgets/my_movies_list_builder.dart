import 'package:flutter/material.dart';
import 'package:netflix_full_ui/utils/color_controller/color_controller.dart';

class MyMoviesListBuilderWidget extends StatelessWidget {
  MyMoviesListBuilderWidget({
    super.key,
    required this.title,
    this.shape = BoxShape.rectangle,
    this.height = 161,
    this.width = 103,
    this.visible = false,
    required this.imageList,
    this.size = 20.92,
  });

  final String title;
  final BoxShape shape;
  final double height;
  final double width;
  final List imageList;
  final bool visible;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: size,
                  color: ColorConstant.textColor,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: height,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    imageList.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: shape,
                          color: ColorConstant.containerColor,
                          image: DecorationImage(
                              image: AssetImage(imageList[index]),
                              fit: BoxFit.fitHeight),
                        ),
                        height: height,
                        width: width,
                        child: Visibility(
                          visible: visible,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              LinearProgressIndicator(
                                backgroundColor: Color(0xFFE50914),
                                color: Color(0xFFE50914),
                              ),
                              Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFF121212),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.info_outline,
                                      color: Colors.white,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.more_vert_outlined,
                                      color: Colors.white,
                                      size: 24,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // child: Image.asset("assets/images/Rectangle 26.png"),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
