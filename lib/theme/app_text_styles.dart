import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  static const String fontFamily = 'Mulish';

  static const TextStyle headlineBold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 56,
    fontWeight: FontWeight.w700,
    color: Colors.black
  );

  static const TextStyle headlineRegular = TextStyle(
    fontFamily: fontFamily,
    fontSize: 56,
    fontWeight: FontWeight.w500,
    color: Colors.black
  );
  
  static const TextStyle subTitleBold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 40,
    fontWeight: FontWeight.w700,
    color: Colors.black
  );

  static const TextStyle buttonText = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: Colors.white
  );

  static const TextStyle iconButtonText = TextStyle(
    fontFamily: fontFamily,
    fontSize: 40,
    fontWeight: FontWeight.w700,
    color: Colors.white 
  );

  static const TextStyle recordDetailValue = TextStyle(
    fontFamily: fontFamily,
    fontSize: 40,
    fontWeight: FontWeight.w600,
    color: Colors.black
  );

  static const TextStyle popupText = TextStyle(
    fontFamily: fontFamily,
    fontSize: 40,
    fontWeight: FontWeight.w600,
    color: Colors.black
  );

  static const TextStyle sidebarLabel = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: Colors.white
  );

  static const TextStyle recordCardTitle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: AppColors.darkestBlue
  );

  static const TextStyle recordCardCode = TextStyle(
    fontFamily: fontFamily,
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: Colors.black
  );

  static const TextStyle recordCardDates = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Colors.black
  );

  static const TextStyle inputLabel = TextStyle(
    fontFamily: fontFamily,
    fontSize: 28,
    fontWeight: FontWeight.w500,
    color: Colors.black
  );

  static const TextStyle inputText = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: Colors.black
  );
}