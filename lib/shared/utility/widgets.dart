import 'package:assesment/shared/utility/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_assets.dart';
import 'colors.dart';
SizedBox gapW(width) => SizedBox(
  width: width,
);
SizedBox gapH(height) => SizedBox(
  height: height,
);
Padding padH(horizontal, child) => Padding(
  padding: EdgeInsets.symmetric(horizontal: horizontal),
  child: child,
);
Padding padV(vertical, child) => Padding(
  padding: EdgeInsets.symmetric(horizontal: vertical),
  child: child,
);
EdgeInsets screenPad() => EdgeInsets.symmetric(horizontal: 16.w);

AnnotatedRegion<SystemUiOverlayStyle> whiteStatusBar({required Widget body }) {
  return AnnotatedRegion<SystemUiOverlayStyle>(
      value:const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness:  Brightness.light
      ),
      child: body
  );
}
AnnotatedRegion<SystemUiOverlayStyle> darkStatusBar({required Widget body }) {
  return AnnotatedRegion<SystemUiOverlayStyle>(
      value:const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness:  Brightness.dark
      ),
      child: body
  );
}
Container appBar({required String shoppingLimit,required Function() onTapActivateCredit}) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(horizontal: 16.w),
    decoration: BoxDecoration(
        color: AppColors.secondary
    ),
    child: Column(
      children: [
        SafeArea(top: true,
            child: SizedBox()),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(width: 167.w,
                    child: pageTileTxt("Pay later everywhere")),
                gapW(3.w),
                Padding(
                  padding:  EdgeInsets.only(bottom: 15.h),
                  child: Image.asset(AppAssets.alert,width: 17.h,height: 17.h,fit: BoxFit.contain,),
                )
              ],
            ),


            Column(crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                limitTxt("Shopping limit: $shoppingLimit"),
                gapH(16.h),

                GestureDetector(onTap: onTapActivateCredit,
                  child: Container(
                    width: 134.w,
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(4.r)
                    ),
                    child: Center(child: btnTxt("Activate Credit"),),
                  ),
                )

              ],)
          ],),
        gapH(30.h)
      ],
    ),

  );
}
Container deviceItemWidget({required String title,required String price,required String formerPrice,required String image,required String icon}) {
  return Container(
    width: 181.h,height: 171.h,
    decoration: BoxDecoration(
        color: AppColors.white,borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.05),
            blurRadius: 10.r,
            spreadRadius: 0,
            offset: const Offset(0, 4),
          )
        ]
    ),
    child: Stack(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsetsGeometry.only(left: 10.w,right: 10.w,bottom: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gapH(5.h),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 112.h,height: 96.h,
                    child: Image.asset(image,width: 112.h,height: 96.h,fit: BoxFit.cover,),
                  ),
                ],
              ),
              itemTitleTxt(title),
              gapH(10.h),
              Expanded(
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    priceTxt(price),
                    gapW(5.w),
                    Expanded(child: formerPriceTxt(formerPrice))
                  ],
                ),
              )
            ],),
        ),
        Positioned(
            top: 8.h,
            left: 5.w,
            child: Container(
              width: 50.w,height: 50.h,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black.withValues(alpha: 0.05),
                      blurRadius: 10.r,
                      spreadRadius: 0,
                      offset: const Offset(0, 4),
                    )
                  ]
              ),
              child: Center(child: Image.asset(icon,fit: BoxFit.contain,
                width: 30.w,height: 30.h,
              ),),
            ))
      ],),

  );
}
SizedBox merchantItemWidget({required String title, required String icon, required bool isActive}) {
  return SizedBox(width: 80.w,
    child: Column(crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              width: 60.h,height: 60.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.inputFieldBackgroundColor,
                  image: DecorationImage(
                    image: AssetImage(icon),
                    fit: BoxFit.cover,
                  )
              ),
            ),
            if(isActive)
              Positioned(
                  right: -1,
                  top: -1,
                  child: Container(
                    width: 20.h,height: 20.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.white,
                    ),
                    child: Center(child: Container(
                      width: 11.h,height: 11.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.green,
                      ),
                    ),),
                  ))
          ],
        ),
        gapH(10.h),
        SizedBox(
            width: 80.w,
            child: subItemTileTxt(title))

      ],
    ),
  );
}
