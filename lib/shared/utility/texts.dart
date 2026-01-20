

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

Text defaultText(title, size,
    {weight = FontWeight.w400,
      maxLines = 1,
      textAlign = TextAlign.start,
      color  = AppColors.textBlack,
      height,
      bool underline = false,
      String fontFamily = 'avenirRegular',
      bool strikeThrough = false,

    }) {
  return Text(
    title,
    style: TextStyle(
      fontFamily: fontFamily,
      color: color,
      fontSize: size,
      fontWeight: weight,
      height: height,
      decoration: underline ? TextDecoration.underline : strikeThrough? TextDecoration.lineThrough:TextDecoration.none,
      decorationColor: color,
      fontFeatures: const [
        FontFeature.enable('salt'),
        FontFeature.slashedZero(),
      ],
    ),
    maxLines: maxLines,
    overflow: TextOverflow.ellipsis,
    textAlign: textAlign,

  );
}

Text pageTileTxt(String txt) => defaultText(txt, 28.sp,weight: FontWeight.w900,fontFamily: "avenirBlack",maxLines: 3);
Text limitTxt(String txt) => defaultText(txt, 12.sp,weight: FontWeight.w500,fontFamily: "avenirRegular",
    maxLines: 1,color: AppColors.blue4A);
Text btnTxt(String txt) => defaultText(txt, 13.sp,weight: FontWeight.w700,fontFamily: "axiformaBold",
    maxLines: 1,color: AppColors.white);
Text itemTitleTxt(String txt) => defaultText(txt, 14.sp,weight: FontWeight.w800,fontFamily: "avenirHeavy",
    maxLines: 1,color: AppColors.textBlack,);
Text priceTxt(String txt) => defaultText(txt, 14.sp,weight: FontWeight.w800,fontFamily: "avenirBlack",
  maxLines: 1,color: AppColors.textPrimaryED,);
Text formerPriceTxt(String txt) => defaultText(txt, 12.sp,weight: FontWeight.w500,fontFamily: "avenirRegular",
  maxLines: 1,color: AppColors.textInactive,strikeThrough: true);
Text subPageTileTxt(String txt) => defaultText(txt, 16.sp,weight: FontWeight.w900,fontFamily: "avenirBlack",
    color: AppColors.text900,);
Text actionTxt(String txt) => defaultText(txt, 12.sp,weight: FontWeight.w400,fontFamily: "avenirRegular",color: AppColors.primary);
Text subItemTileTxt(String txt) => defaultText(txt, 12.sp,weight: FontWeight.w500,fontFamily: "avenirRegular",maxLines: 2,textAlign: TextAlign.center);






