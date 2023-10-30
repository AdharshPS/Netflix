import 'package:flutter/material.dart';
import 'package:netflix_full_ui/data_base/data_base.dart';

class ListTileValues extends StatelessWidget {
  ListTileValues({
    super.key,
    required this.indexNum,
    required this.title,
  });

  final int indexNum;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      color: Color(0xFF424242),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 76,
          ),
          Container(
            height: 76,
            width: 164,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    DataBase.listTileImageMap[indexNum]["image_list"]),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned.fill(
            left: 180,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.72,
                ),
              ),
            ),
          ),
          Positioned.fill(
            right: 10,
            child: Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.play_circle_outline,
                color: Colors.white,
                size: 28,
              ),
            ),
          )
        ],
      ),
    );
    // ListTile(
    //   tileColor: Colors.grey[600],
    //   visualDensity: VisualDensity(vertical: 4),
    //   leading: Container(
    //     height: double.infinity,
    //     width: 120,
    //     decoration: BoxDecoration(
    //       image: DecorationImage(
    //         image:
    //             AssetImage(DataBase.listTileImageMap[indexNum]["image_list"]),
    //         fit: BoxFit.fill,
    //       ),
    //     ),
    //   ),
    //   title: Text(
    //     title,
    //     style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
    //   ),
    //   trailing: Icon(
    //     Icons.play_circle_outline_outlined,
    //     color: Colors.white,
    //   ),
    // );
  }
}
