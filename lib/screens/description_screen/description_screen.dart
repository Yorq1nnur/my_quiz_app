import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../../utils/styles/app_text_style.dart';

class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({super.key, required this.subjectName});

  final String subjectName;

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(statusBarColor: AppColors.transparent),
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
                    "Start Quiz",
                    style: AppTextStyle.interBold.copyWith(
                      color: AppColors.cF2F2F2,
                      fontWeight: FontWeight.w500,
                      fontSize: 20.sp,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
              decoration: BoxDecoration(
                gradient: AppColors.linearGradient2,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.r),
                  topLeft: Radius.circular(40.r),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "WELCOME TO QUIZ",
                      style: AppTextStyle.interBold.copyWith(
                        color: Colors.yellowAccent,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Image.asset(
                    AppImages.math,
                    height: 250.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "FAN NOMI:",
                          style: AppTextStyle.interBold.copyWith(
                              color: AppColors.c2F3739,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          widget.subjectName,
                          style: AppTextStyle.interBold.copyWith(
                            color: AppColors.cF2F2F2,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
