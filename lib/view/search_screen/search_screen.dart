import 'package:flutter/material.dart';
import 'package:netflix_full_ui/data_base/data_base.dart';
import 'package:netflix_full_ui/utils/color_controller/color_controller.dart';
import 'package:netflix_full_ui/view/search_screen/widgets/list_tile_values.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 52,
                child: TextField(
                  // keyboardType: TextInputType.visiblePassword,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.21,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFF424242),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20,
                    ),
                    prefixIconColor: Color(0xFFC4C4C4),
                    hintStyle: TextStyle(
                      color: Color(0xFFC4C4C4),
                      fontWeight: FontWeight.w400,
                      fontSize: 15.21,
                    ),
                    hintText: "Search for a show, movie, genre, etc. ",
                    suffixIcon: Icon(
                      Icons.mic,
                      size: 24,
                    ),
                    suffixIconColor: Color(0xFFC4C4C4),
                  ),
                ),
              ),
              // Container(
              //   height: 60,
              //   width: double.infinity,
              //   color: Colors.grey[800],
              //   child: ListTile(
              //     leading: Icon(
              //       Icons.search_outlined,
              //       color: Colors.grey[300],
              //       size: 28,
              //     ),
              //     title: Text(
              //       "Search for a show, movie, genre, e.t.c",
              //       style: TextStyle(color: Colors.grey[300], fontSize: 17),
              //     ),
              //     trailing: Icon(
              //       Icons.mic,
              //       color: Colors.grey[300],
              //       size: 28,
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Top Searches",
                  style: TextStyle(
                    fontSize: 26.75,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: DataBase.listTileImageMap.length,
                  // separatorBuilder: (context, index) => Divider(
                  //   thickness: 0,
                  // ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: ListTileValues(
                        indexNum: index,
                        title: DataBase.listTileImageMap[index]["name"],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
