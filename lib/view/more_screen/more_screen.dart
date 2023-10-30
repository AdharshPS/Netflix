import 'package:flutter/material.dart';
import 'package:netflix_full_ui/utils/color_controller/color_controller.dart';
import 'package:netflix_full_ui/utils/image_controller/image_constant.dart';
import 'package:netflix_full_ui/view/more_screen/widgets/buttons_widget.dart';
import 'package:netflix_full_ui/view/more_screen/widgets/copy_link_widget.dart';
import 'package:netflix_full_ui/view/more_screen/widgets/profiles_widget.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  int currentIndex = ImageConstant.moreList.length;
  double height = 60.07;
  double width = 65.29;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: ColorConstant.primaryBlack,
      //   automaticallyImplyLeading: false,
      // ),
      backgroundColor: ColorConstant.primaryBlack,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(top: 82, left: 4),
              child: ProfilesWidget(),
            ),
            // child: Column(children: [
            //   SizedBox(height: 88),
            //   // ignore: sized_box_for_whitespace
            //   Container(
            //     height: height,
            //     child: ListView.separated(
            //       scrollDirection: Axis.horizontal,
            //       shrinkWrap: true,
            //       separatorBuilder: (context, index) => SizedBox(
            //         width: 10,
            //         height: 10,
            //       ),
            //       itemCount: DataBase.myImageMap.length,
            //       itemBuilder: (context, index) {
            //         return InkWell(
            //           onTap: () {
            //             setState(() {
            //               currentIndex = index;
            //             });
            //           },
            //           child: currentIndex == index
            //               ? Container(
            //                   width: 73,
            //                   height: height,
            //                   decoration: BoxDecoration(
            //                     image: DecorationImage(
            //                       image: AssetImage(
            //                         DataBase.myImageMap[index]["image_list"],
            //                       ),
            //                       fit: BoxFit.fill,
            //                     ),
            //                   ),
            //                 )
            //               : Container(
            //                   width: width,
            //                   height: height,
            //                   decoration: BoxDecoration(
            //                     image: DecorationImage(
            //                       image: AssetImage(
            //                         DataBase.myImageMap[index]["image_list"],
            //                       ),
            //                       fit: BoxFit.fill,
            //                     ),
            //                   ),
            //                 ),
            //         );
            //       },
            //     ),
            //   ),
            // ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  size: 12,
                  color: Color.fromRGBO(255, 255, 255, 0.81),
                ),
                SizedBox(width: 6),
                Text(
                  "Manage Profiles",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.72,
                      letterSpacing: -0.25,
                      color: Color.fromRGBO(255, 255, 255, 0.81)),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 253,
            color: Color(0xFF1A1A1A),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      // RotatedBox(
                      //   quarterTurns: 2,
                      Transform.flip(
                        flipX: true,
                        child: Icon(
                          Icons.sms_outlined,
                          size: 24,
                          color: ColorConstant.textColor,
                        ),
                      ),

                      // Transform.rotate(
                      //   angle: 180 * 3.14 / 180,
                      //   child: Icon(
                      //     Icons.sms_outlined,
                      //     size: 24,
                      //     color: ColorConstant.textColor,
                      //   ),
                      // ),
                      SizedBox(width: 5),
                      Text(
                        "Tell friends about Netflix.",
                        style: TextStyle(
                          color: ColorConstant.textColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 19.63,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 3),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam enim non posuere pulvinar diam.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.78,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Terms & Conditions",
                      style: TextStyle(
                        color: Color(0xFFC4C4C4),
                        fontSize: 10.78,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xFFC4C4C4),
                        decorationThickness: 2,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 37,
                        width: 247,
                        color: ColorConstant.primaryBlack,
                      ),
                      SizedBox(width: 7),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                        ),
                        child: Text(
                          "Copy Link",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.06,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: List.generate(
                      ImageConstant.moreList.length,
                      (index) => CopyLinkWidget(
                        image: ImageConstant.moreList[index],
                        index: index,
                        currentIndex: currentIndex,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
            child: Row(
              children: [
                Icon(
                  Icons.check_outlined,
                  size: 33,
                  color: Color(0xFFe0E0E0),
                ),
                SizedBox(width: 10),
                Text(
                  "My List",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.72,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Color(0xFF424242),
            thickness: 1,
          ),
          ButtonsWidget(buttonName: "App Settings"),
          ButtonsWidget(buttonName: "Account"),
          ButtonsWidget(buttonName: "Help"),
          ButtonsWidget(buttonName: "Sign Out"),
        ],
      ),
    );
  }
}
