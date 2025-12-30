import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class YHelperFunctions {
  static Color? getColor(String colorName) {
    switch (colorName.toLowerCase()) {
      case "green":
        return Colors.green;
      case "red":
        return Colors.red;
      case "grey":
        return Colors.grey;
      case "blue":
        return Colors.blue;
      case "pink":
        return Colors.pink;
      case "purple":
        return Colors.purple;
      case "black":
        return Colors.black;
      case "white":
        return Colors.white;
      case "teal":
        return Colors.teal;
      default:
        return null;
    }
  }

  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  static void showAlert(BuildContext context, String message, String title) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("Ok"),
            ),
          ],
        );
      },
    );
  }

  static void navigateToScreen(BuildContext context, String rout) {
    Navigator.of(context, rootNavigator: true).pushNamed(rout);
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return "${text.substring(0, maxLength)}...";
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double screenWidtht(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static String getFormattedDate(
    DateTime date, {
    String format = "dd-MMM-yyyy",
  }) {
    return DateFormat(format).format(date);
  }

  static List<T> removeDublicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrapedList = <Widget>[];
    for (int i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
        i,
        ((i + rowSize) < widgets.length) ? widgets.length : i + rowSize,
      );
      wrapedList.add(Row(children: rowChildren));
    }
    return wrapedList;
  }
}
