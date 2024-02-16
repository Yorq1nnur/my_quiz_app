import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_quiz_app/utils/colors/app_colors.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../utils/images/app_images.dart';
import '../../utils/styles/app_text_style.dart';

class StartQuizScreen extends StatefulWidget {
  const StartQuizScreen({super.key});

  @override
  State<StartQuizScreen> createState() => _StartQuizScreenState();
}

class _StartQuizScreenState extends State<StartQuizScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent,
      ),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 32.w,
                right: 32.w,
                top: 50.h,
                bottom: 22.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ZoomTapAnimation(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.c162023,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          const BoxShadow(
                              color: AppColors.c2F3739, spreadRadius: 1),
                          BoxShadow(
                            color: AppColors.c000000.withOpacity(0.25),
                            blurRadius: 12,
                            offset: Offset(
                              0,
                              5.w,
                            ),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.w, vertical: 12.w),
                      child: Center(
                        child: SvgPicture.asset(
                          AppImages.arrowBack,
                          height: 24.h,
                          width: 24.w,
                          fit: BoxFit.cover,
                          colorFilter: const ColorFilter.mode(
                            AppColors.cF2F2F2,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Text(
                    "QUIZ",
                    style: AppTextStyle.interBold.copyWith(
                      color: AppColors.cF2F2F2,
                      fontWeight: FontWeight.w500,
                      fontSize: 20.sp,
                    ),
                  ),
                  const Spacer(),
                  ZoomTapAnimation(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 12.h,
                        horizontal: 15.w,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.cF2954D,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          const BoxShadow(
                            color: AppColors.cF2954D,
                            spreadRadius: 1,
                          ),
                          BoxShadow(
                            color: AppColors.c000000.withOpacity(0.25),
                            blurRadius: 12,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Text(
                        "Yuborish",
                        style: AppTextStyle.interThin.copyWith(
                          color: AppColors.cF2F2F2,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
