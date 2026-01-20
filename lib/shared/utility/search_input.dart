import 'package:assesment/shared/utility/app_assets.dart';
import 'package:assesment/shared/utility/colors.dart';
import 'package:assesment/shared/utility/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SearchInput extends StatefulWidget {
  final String hint;
  final Function()onScanTap;
  Function(String)? onChange;
 SearchInput({super.key, required this.hint, required this.onScanTap});

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: TextFormField(
                cursorColor: AppColors.primary,
                cursorHeight: 18.h,
                onChanged: widget.onChange,
                decoration: InputDecoration(

                  filled: true, // Required for background color
                  fillColor: AppColors.inputFieldBackgroundColor,
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.r),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 11.h,horizontal: 20.w),
                  focusColor:  AppColors.primary,
                  errorBorder: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.r),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.r),
                    borderSide: BorderSide.none,
                  ),

                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.r),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 20.w,right: 10.w),
                    child: Image.asset(AppAssets.search,width: 18.h,height: 18.h,),
                  ),
                  prefixIconConstraints: BoxConstraints(
                    maxHeight: 18.h,
                  ),
                  hintStyle:  TextStyle(
                    fontFamily: "avenirBook",
                    color: AppColors.hint500,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400
                  ),
                  hintText: widget.hint,
                  isDense: true,
                ),
              ),

            ),
          ),
          gapW(10.w),
          Container(
            height: 45.h,width: 45.w,
            decoration: BoxDecoration(
              color: AppColors.inputFieldBackgroundColor,
              borderRadius: BorderRadius.circular(10.r)
            ),

            child: Center(child: Image.asset(AppAssets.scan,width: 24.w,height: 24.h,),),

          )
        ],
      ),
    );
  }
}
