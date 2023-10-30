import 'package:flutter/material.dart';
import 'package:netflix_full_ui/data_base/data_base.dart';
import 'package:netflix_full_ui/utils/color_controller/color_controller.dart';
import 'package:netflix_full_ui/utils/image_controller/image_constant.dart';
import 'package:netflix_full_ui/view/username_screen/widgets/user_name_card.dart';

class usernameScreen extends StatelessWidget {
  const usernameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      appBar: AppBar(
        backgroundColor: ColorConstant.primaryBlack,
        title: Container(
          height: 37.2,
          width: 138,
          child: ImageConstant.myLogo,
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.edit,
            size: 24,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: DataBase.myImageMap.length + 1,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 0,
                    ),
                    itemBuilder: (context, index) => index ==
                            DataBase.myImageMap.length
                        ? Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                ColorConstant.primaryBlack)),
                                    child: ImageConstant.addLogo,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "add",
                                style: TextStyle(
                                  color: ColorConstant.textColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13.25,
                                ),
                              ),
                            ],
                          )
                        //UserNameCard()
                        : UserNameCard(indexNumber: index)
                    // Column(
                    //     children: [
                    //       InkWell(
                    //         onTap: () {
                    //           Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //               builder: (context) => HomeScreen(),
                    //             ),
                    //           );
                    //         },
                    //         child: Container(
                    //           decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(10),
                    //             color: ColorConstant.primaryBlack,
                    //           ),
                    //           child:
                    //               // Text(DataBase.nameList[index]),
                    //               //   Image.asset(
                    //               // DataBase.myImageMap[index]["image_list"],
                    //               // fit: BoxFit.cover,
                    //               Image.asset(DataBase.myImageMap[index]
                    //                   ["image_list"]),
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         height: 6,
                    //       ),
                    //       Text(
                    //         DataBase.myImageMap[index]["name"],
                    //         style: TextStyle(color: ColorConstant.textColor),
                    //       ),
                    //     ],
                    //   ),

                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class UserNameCard extends StatelessWidget {
//   const UserNameCard({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//         children: [
//           Container(
//             child: ElevatedButton(
//               onPressed: () {},
//               style: ButtonStyle(
//                   backgroundColor: MaterialStatePropertyAll(
//                       ColorConstant.primaryBlack)),
//               child: ImageConstant.addLogo,
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Text(
//             "add",
//             style: TextStyle(color: ColorConstant.textColor),
//           ),
//         ],
//       );
//   }
// }
