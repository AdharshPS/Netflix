import 'package:flutter/material.dart';
import 'package:netflix_full_ui/data_base/data_base.dart';
import 'package:netflix_full_ui/utils/color_controller/color_controller.dart';
import 'package:netflix_full_ui/view/bottom_navigation_bar/bottom_navigation_bar.dart';

class UserNameCard extends StatelessWidget {
  const UserNameCard({super.key, required this.indexNumber});

  final int indexNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 121,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomNavigationBarScreen(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 100,
                height: 92,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                ),
                child:
                    // Text(DataBase.nameList[index]),
                    //   Image.asset(
                    // DataBase.myImageMap[index]["image_list"],
                    // fit: BoxFit.cover,
                    Image.asset(
                  DataBase.myImageMap[indexNumber]["image_list"],
                  // fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            DataBase.myImageMap[indexNumber]["name"],
            style: TextStyle(
              color: ColorConstant.textColor,
              fontWeight: FontWeight.w400,
              fontSize: 13.25,
            ),
          ),
        ],
      ),
    );
  }
}
