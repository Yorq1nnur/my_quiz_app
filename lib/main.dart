import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quiz_app/screens/splash_screen.dart';
import 'package:my_quiz_app/utils/colors/app_colors.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414,896),
      builder: (context,child){
        return MaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.c_181725
          ),
          home: child ,
          debugShowCheckedModeBanner: false,
        );
      },
      child: const SplashScreen(),
    );
  }
}
