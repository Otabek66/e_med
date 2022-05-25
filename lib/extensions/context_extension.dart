import 'package:flutter/cupertino.dart';

extension MyContext on BuildContext{
  MediaQueryData get mediaQueryData => MediaQuery.of(this);
  double get h => mediaQueryData.size.height;
  double get w => mediaQueryData.size.width;
}