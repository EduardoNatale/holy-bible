import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTheme {
  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      textTheme: TextTheme(
        bodyText1: ThemeData.dark().textTheme.bodyText1!.copyWith(
              fontSize: ((16 / textScaleFactor) * scaleFont).sp,
              letterSpacing: .5,
            ),
        bodyText2: ThemeData.dark().textTheme.bodyText2!.copyWith(
              fontSize: ((14 / textScaleFactor) * scaleFont).sp,
              letterSpacing: .25,
            ),
        button: ThemeData.dark().textTheme.button!.copyWith(
              fontSize: ((14 / textScaleFactor) * scaleFont).sp,
              letterSpacing: 1.25,
              fontWeight: FontWeight.w500,
            ),
        caption: ThemeData.dark().textTheme.caption!.copyWith(
              fontSize: ((12 / textScaleFactor) * scaleFont).sp,
              letterSpacing: .4,
            ),
        headline1: ThemeData.dark().textTheme.headline1!.copyWith(
              fontSize: ((96 / textScaleFactor) * scaleFont).sp,
              letterSpacing: -1.5,
              fontWeight: FontWeight.w300,
            ),
        headline2: ThemeData.dark().textTheme.headline2!.copyWith(
              fontSize: ((60 / textScaleFactor) * scaleFont).sp,
              fontWeight: FontWeight.w300,
              letterSpacing: -.5,
            ),
        headline3: ThemeData.dark().textTheme.headline3!.copyWith(
              fontSize: ((48 / textScaleFactor) * scaleFont).sp,
              letterSpacing: 0,
            ),
        headline4: ThemeData.dark().textTheme.headline4!.copyWith(
              fontSize: ((34 / textScaleFactor) * scaleFont).sp,
              letterSpacing: .25,
            ),
        headline5: ThemeData.dark().textTheme.headline5!.copyWith(
              fontSize: ((24 / textScaleFactor) * scaleFont).sp,
              letterSpacing: 0,
            ),
        headline6: ThemeData.dark().textTheme.headline6!.copyWith(
              fontSize: ((20 / textScaleFactor) * scaleFont).sp,
              letterSpacing: .15,
              fontWeight: FontWeight.w500,
            ),
        overline: ThemeData.dark().textTheme.overline!.copyWith(
              fontSize: ((10 / textScaleFactor) * scaleFont).sp,
              letterSpacing: 1.5,
            ),
        subtitle1: ThemeData.dark().textTheme.subtitle1!.copyWith(
              fontSize: ((16 / textScaleFactor) * scaleFont).sp,
              letterSpacing: .15,
            ),
        subtitle2: ThemeData.dark().textTheme.subtitle2!.copyWith(
              fontSize: ((14 / textScaleFactor) * scaleFont).sp,
              letterSpacing: .1,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }

  static double textScaleFactor = 1;
  static double scaleFont = 1;
}
