// import 'package:netflix_full_ui/utils/image_controller/image_constant.dart';

import 'package:netflix_full_ui/utils/image_controller/image_constant.dart';

class DataBase {
  // static List nameList = ["adharsh", "abhi", "kuttan"];
  static List childLogo = [
    "assets/images/Rectangle 2.png",
    "assets/images/Rectangle 3.png",
    "assets/images/Rectangle 4.png",
    "assets/images/Rectangle 5.png",
  ];
  static List previews = [
    "assets/images/Ellipse 2.png",
    "assets/images/Ellipse 3.png",
    "assets/images/Ellipse 4.png",
    "assets/images/Ellipse 4 (1).png",
  ];

  static List<Map> myImageMap = [
    {"name": "Emanalo", "image_list": ImageConstant.logoList[0]},
    {"name": "Onyeka", "image_list": ImageConstant.logoList[1]},
    {"name": "Thelma", "image_list": ImageConstant.logoList[2]},
    {"name": "Kids", "image_list": ImageConstant.logoList[3]},
    // {"name": "E", "image_list": ImageConstant.myLogo},
    // {"name": "A", "image_list": ImageConstant.imag1},
    // {"name": "B", "image_list": ImageConstant.imag2},
    // {"name": "C", "image_list": ImageConstant.imag4},
    // {"name": "D", "image_list": ImageConstant.imag3},
  ];

  static List<Map> listTileImageMap = [
    {"name": "Citation", "image_list": "assets/images/Rectangle 21.png"},
    {"name": "Oloture", "image_list": "assets/images/Rectangle 22.png"},
    {"name": "The setup", "image_list": "assets/images/Rectangle 21 (1).png"},
    {
      "name": "Breaking bad",
      "image_list": "assets/images/Rectangle 22 (1).png"
    },
    {"name": "Ozark", "image_list": "assets/images/Rectangle 21 (2).png"},
    {
      "name": "The Governor",
      "image_list": "assets/images/Rectangle 22 (2).png"
    },
    {
      "name": "Your Excellency",
      "image_list": "assets/images/Rectangle 21 (3).png"
    },
  ];

  static List<Map> comingSoon = [
    {
      "name": "Castle & Castle",
      "image_list": "assets/images/Rectangle 22 (3).png"
    },
    {
      "name": "Tiny Pretty Things",
      "image_list": "assets/images/Rectangle 22 (5).png"
    },
    {"name": "Faster", "image_list": "assets/images/Rectangle 22 (4).png"},
  ];
}
