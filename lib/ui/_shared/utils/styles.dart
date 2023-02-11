import 'package:flutter/material.dart';

import 'colors.dart';

class AppTextStyles {
  static const rightsStyle = TextStyle(
    color: AppColors.black,
    fontSize: 12,
    fontFamily: "Almarai",
    fontWeight: FontWeight.normal,
  );
  static const normalTextStyle = TextStyle(
    color: AppColors.black,
    fontSize: 16,
    fontFamily: "Almarai",
    fontWeight: FontWeight.normal,
  );

  static const titleStyle = TextStyle(
    color: AppColors.black,
    fontSize: 18,
    fontFamily: "Almarai",
    fontWeight: FontWeight.bold,
  );


  static const bannerStyle = TextStyle(
    color: AppColors.white,
    fontSize: 18,
    fontFamily: "Almarai",
    fontWeight: FontWeight.bold,
  );

  static const hintStyle = TextStyle(
    color: AppColors.black,
    fontSize: 14,
    fontFamily: "Almarai",
    fontWeight: FontWeight.normal,
  );

  static const inputStyle = TextStyle(
    color: AppColors.black,
    fontSize: 16,
    fontFamily: "Almarai",
    fontWeight: FontWeight.bold,
  );

  static const inputStyleError = TextStyle(
    color: AppColors.errorRed,
    fontSize: 10,
    fontFamily: "Almarai",
    fontWeight: FontWeight.normal,
  );

  static const notificationCountStyle = TextStyle(
    color: AppColors.white,
    fontSize: 12,
    fontFamily: "Almarai",
    fontWeight: FontWeight.bold,
  );

  static final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: AppColors.white,
    backgroundColor: AppColors.successGreen,
    minimumSize: const Size(88, 36),
    padding: const EdgeInsets.symmetric(horizontal: 64),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
    ),
  );
}
