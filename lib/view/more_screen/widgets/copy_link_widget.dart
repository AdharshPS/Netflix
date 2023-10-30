import 'package:flutter/material.dart';
import 'package:netflix_full_ui/utils/image_controller/image_constant.dart';

class CopyLinkWidget extends StatelessWidget {
  const CopyLinkWidget(
      {super.key,
      required this.image,
      required this.index,
      required this.currentIndex});

  final String image;
  final int index;

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return index == ImageConstant.moreList.length
        //  index == currentIndex
        ? Column(
            children: [
              Container(
                width: 36,
                height: 33.6,
                child: Icon(
                  Icons.more_horiz_outlined,
                  color: Colors.white,
                  size: 37,
                ),
              ),
              Text(
                "More",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.72,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        : Row(
            children: [
              Container(
                width: 36,
                height: 33.6,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.fill),
                ),
              ),
              SizedBox(
                height: 40,
                child: VerticalDivider(
                  width: 55,
                  thickness: 1,
                  color: Colors.grey,
                ),
              )
            ],
          );
  }
}
