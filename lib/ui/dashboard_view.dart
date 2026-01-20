import 'package:assesment/shared/utility/app_assets.dart';
import 'package:assesment/shared/utility/colors.dart';
import 'package:assesment/shared/utility/texts.dart';
import 'package:assesment/shared/utility/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../shared/constants.dart';
import '../shared/utility/search_input.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return darkStatusBar(
      body: GestureDetector(onTap: (){FocusManager.instance.primaryFocus?.unfocus();},
        child: Scaffold(
          backgroundColor: AppColors.white,
          body: Column(children: [
            appBar(shoppingLimit: "₦0", onTapActivateCredit: (){}),
            gapH(20.h),
            SearchInput(
                hint: "Search for products or stores",
                onScanTap: (){}
            ),
            gapH(20.h),
            Expanded(child: SingleChildScrollView(child: Column(children: [
              Container(
                width: double.infinity,height: 405.h, color: AppColors.white,
                child: Container(
                  width: double.infinity, height: 405.h, color: AppColors.inputFieldBackgroundColor,
                  child: MasonryGridView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h,),
                    gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
                    mainAxisSpacing: 24.h, crossAxisSpacing: 24.h,
                    itemCount: deviceList.length,
                    itemBuilder: (context, index) {
                      final device = deviceList[index];
                      return deviceItemWidget(
                        title: device.title, price: "₦ ${device.price}",
                        formerPrice: "₦ ${device.formerPrice}", image: device.image,
                        icon: device.icon,
                      );}
                  ),),
              ),
              Container(
                height: 500.h,width: double.infinity,
                color: AppColors.white,
                child: Column(children: [
                  gapH(20.h),
                  Padding(
                    padding: screenPad(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        subPageTileTxt("Featured Merchants"),
                        Spacer(),
                        actionTxt("View all")
                      ],),
                  ),
                  gapH(20.h),
                  Expanded(
                    child: MasonryGridView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h,),
                        gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
                        mainAxisSpacing: 24.h, crossAxisSpacing: 24.h,
                        itemCount: merchantList.length,
                        itemBuilder: (context, index) {
                          final merchant = merchantList[index];
                          return merchantItemWidget(
                            title: merchant.title, icon: merchant.icon, isActive: merchant.isActive,
                          );}
                    ),
                  ),



                ],),
              ),
              gapH(100.h),
            ],),))
          ],),

        ),
      ),
    );
  }





}
