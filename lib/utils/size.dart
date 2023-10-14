import 'package:flutter/material.dart';

class ResponsiveText {
  static double titleSize(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      return 18.0;
    } else if (screenWidth < 1024) {
      return 24.0;
    } else {
      return 32.0;
    }
  }

  static double itemTitleSize(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      return 16.0;
    } else if (screenWidth < 1024) {
      return 20.0;
    } else {
      return 24.0;
    }
  }
}

class ResponsiveSize {
  static double containerSize(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      return 0.3;
    } else if (screenWidth < 1024) {
      return 0.4;
    } else {
      return 0.5;
    }
  }

  static double iconSize(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      return 24.0;
    } else if (screenWidth < 1024) {
      return 32.0;
    } else {
      return 48.0;
    }
  }
}
