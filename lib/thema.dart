// theme.dart
import 'package:flag_puzzle/utils/constants.dart';
import 'package:flutter/material.dart';

const Color backgroundColor = Color(0xFF0E0E0E);

const Color gradientColor1 = Color(0xFF79FF3A);
const Color gradientColor2 = Color(0xFF00FFF0);

ThemeData theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
);

BoxDecoration buttonDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(borderRadius),
  gradient: const LinearGradient(
    colors: [
      gradientColor1,
      gradientColor2,
    ],
  ),
);
