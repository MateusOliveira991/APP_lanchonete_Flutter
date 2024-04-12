import 'package:flutter/material.dart';
import 'package:lanchonete/core/app_colors.dart';

class AppTextStyles {
  static const TextStyle buttonTextBlack = TextStyle(
      color: AppColors.secondary, fontSize: 18, fontWeight: FontWeight.bold);

  static const TextStyle buttonTextWhite =
      TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold);

  static const TextStyle labelTextBlack =
      TextStyle(color: Colors.black, fontWeight: FontWeight.bold);
  static const EdgeInsets contentPadding =
      EdgeInsets.symmetric(horizontal: 10, vertical: 4);

      static const TextStyle textoGray =
      TextStyle (color: Color(0xFFABABAB), fontSize: 18, fontWeight: FontWeight.bold);
}
