import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:assesment/shared/utility/colors.dart';
import 'package:assesment/shared/utility/texts.dart';
import 'package:assesment/shared/utility/widgets.dart';
import 'package:assesment/ui/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414, 896),
        minTextAdapt: true, splitScreenMode: true,
        builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: .fromSeed(seedColor: Colors.deepPurple),
          ),
          home: splashScreen(),
        );
      }
    );
  }

  Widget splashScreen() {
    return whiteStatusBar(
       body: AnimatedSplashScreen(
        duration: 2000,
        splashIconSize: 1000,
        splash: Column(
          children: [
            const Spacer(),
            defaultText("CredPal",30.sp,color: AppColors.white,weight: FontWeight.w900),
            const Spacer(),
          ],
        ),
        centered: true,
        nextScreen: DashboardView(),
        backgroundColor: AppColors.primary,
      ),
    );
  }
}


