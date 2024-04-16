import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HHelperFunctions {
  static Color? getColor(String value) {

    if(value == 'Green') {
      return Colors.green;
    } else if(value == 'Red') {
      return Colors.red;
    } else if(value == 'Blue') {
      return Colors.blue;
    } else if(value == 'Pink') {
      return Colors.pink;
    } else if(value == 'Grey') {
      return Colors.grey;
    } else if(value == 'Purple') {
      return Colors.purple;
    } else if(value == 'Black') {
      return Colors.black;
    } else if(value == 'White') {
      return Colors.white;
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for(var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }
}