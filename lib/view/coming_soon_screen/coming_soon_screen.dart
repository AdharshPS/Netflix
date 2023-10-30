import 'package:flutter/material.dart';
import 'package:netflix_full_ui/data_base/data_base.dart';
import 'package:netflix_full_ui/view/coming_soon_screen/widgets/coming_soon_new_arrival.dart';
import 'package:netflix_full_ui/view/coming_soon_screen/widgets/coming_soon_remind_screen.dart';

class ComingSoonScreen extends StatefulWidget {
  const ComingSoonScreen({super.key});

  @override
  State<ComingSoonScreen> createState() => _ComingSoonScreenState();
}

class _ComingSoonScreenState extends State<ComingSoonScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 57,
            ),
            Row(
              children: [
                SizedBox(width: 15),
                // Container(
                //   height: 19,
                //   width: 19,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     color: Color(0xFFF50914),
                //   ),
                // ),
                SizedBox(
                  height: 19,
                  width: 19,
                  child: Image.asset(
                    "assets/images/notification_icon.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Notifications",
                    style: TextStyle(
                        fontSize: 16.91,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            ComingSoonNewArrival(
                title: "El Chappo", image: "assets/images/Rectangle 20.png"),
            ComingSoonNewArrival(
              title: "Peaky Blinders",
              image: "assets/images/Rectangle 21 (4).png",
            ),
            SizedBox(height: 30),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: DataBase.comingSoon.length,
              itemBuilder: (context, index) {
                return ComingSoonRemindMe(
                  title: DataBase.comingSoon[index]["name"],
                  image: DataBase.comingSoon[index]["image_list"],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
