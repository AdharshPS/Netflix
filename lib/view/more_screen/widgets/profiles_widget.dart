import 'package:flutter/material.dart';
import 'package:netflix_full_ui/data_base/data_base.dart';
import 'package:netflix_full_ui/utils/color_controller/color_controller.dart';

class ProfilesWidget extends StatefulWidget {
  const ProfilesWidget({super.key});

  @override
  State<ProfilesWidget> createState() => _ProfilesWidgetState();
}

class _ProfilesWidgetState extends State<ProfilesWidget> {
  int currentIndex = 0;
  double height = 60.07;
  double width = 65.29;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        DataBase.myImageMap.length + 1,
        (index) => index == DataBase.myImageMap.length
            ? Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 58,
                        width: 63,
                        decoration: BoxDecoration(
                          color: ColorConstant.primaryBlack,
                          border: Border.all(
                            width: 1,
                            color: Color(0xFF8C8787),
                          ),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Color(0xFFC4C4C4),
                          size: 35,
                        ),
                      ),
                    ),
                    Text(""),
                  ],
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(left: 5),
                child: InkWell(
                  onTap: () {
                    currentIndex = index;
                    setState(() {});
                  },
                  child: currentIndex == index
                      ? Column(
                          children: [
                            Container(
                              width: 73,
                              height: 68.72,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    DataBase.myImageMap[index]["image_list"],
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Text(
                              DataBase.myImageMap[index]["name"],
                              style: TextStyle(color: ColorConstant.textColor),
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            Container(
                              width: width,
                              height: height,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    DataBase.myImageMap[index]["image_list"],
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Text(
                              DataBase.myImageMap[index]["name"],
                              style: TextStyle(color: ColorConstant.textColor),
                            ),
                          ],
                        ),
                ),
              ),
      ),
    );
  }
}
