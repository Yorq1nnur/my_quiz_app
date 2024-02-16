// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../../utils/styles/app_text_style.dart';

class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({super.key});

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(statusBarColor: AppColors.transparent),
      child: Scaffold(
        backgroundColor: AppColors.c273032,
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
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.c162023,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
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
                          colorFilter: ColorFilter.mode(
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
              padding: EdgeInsets.only(
                top: 10.h,
              ),
              decoration: BoxDecoration(
                color: AppColors.c162023,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    40,
                  ),
                  topRight: Radius.circular(
                    40,
                  ),
                ),
                boxShadow: [
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32.w,
                    ),
                    child: Text(
                      "Put your understanding of this concept to test by answering a few MCQs.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.interBold.copyWith(
                          color: AppColors.cF2F2F2,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 32.w,
                      vertical: 15.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.c162023,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(color: AppColors.cF2954D, spreadRadius: 1),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 154.h,
                              width: 326.w,
                              decoration: BoxDecoration(
                                color: AppColors.cF2954D,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Image.asset(
                                AppImages.math,
                                height: 206.h,
                                width: 280.w,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              left: 18.w,
                              top: 35.h,
                              child: SizedBox(
                                width: 146.w,
                                child: Text(
                                  "Pair of Linear Equation in Two Variables",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyle.interBold.copyWith(
                                      color: AppColors.cF2F2F2,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.w,
                            top: 10.h,
                            bottom: 10.h,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Subject:",
                                    style: AppTextStyle.interBold.copyWith(
                                      color: AppColors.cF2F2F2,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "Maths",
                                    style: AppTextStyle.interBold.copyWith(
                                      color: AppColors.cF2F2F2,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Chapter:",
                                    style: AppTextStyle.interBold.copyWith(
                                      color: AppColors.cF2F2F2,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "Real Numbers",
                                    style: AppTextStyle.interBold.copyWith(
                                      color: AppColors.cF2F2F2,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 15.h,
                      left: 32.w,
                      right: 32.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Total Questions:",
                              style: AppTextStyle.interBold.copyWith(
                                  color: AppColors.cF2F2F2,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              "05",
                              style: AppTextStyle.interBold.copyWith(
                                  color: AppColors.cF2F2F2,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Total Time:",
                              style: AppTextStyle.interBold.copyWith(
                                  color: AppColors.cF2F2F2,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              "15 min",
                              style: AppTextStyle.interBold.copyWith(
                                  color: AppColors.cF2F2F2,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Text(
                          "Instructions:",
                          style: AppTextStyle.interBold.copyWith(
                              color: AppColors.cF2F2F2,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          """The quizzes consists of questions carefully designed to help you self-assess your comprehension of the information presented on the topics covered in the module. After responding to a question, click on the "Next Question" button at the bottom to go to the next questino. After responding to the 8th question, click on "Close" on the top of the window to exit the quiz. If you select an incorrect response for a """,
                          style: AppTextStyle.interBold.copyWith(
                              color: AppColors.cF2F2F2.withOpacity(0.75),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 20.h,
                      horizontal: 32.w,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.c273032,
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.c000000.withOpacity(0.25),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.w, vertical: 8.h),
                          decoration: BoxDecoration(
                            color: AppColors.c273032,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.cF2F2F2,
                                spreadRadius: 1,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                AppImages.clock,
                                height: 22.h,
                                width: 22.w,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "15:00",
                                style: AppTextStyle.interThin.copyWith(
                                    color: AppColors.cF2F2F2,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 12.h,
                            horizontal: 40.w,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.cF2954D,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.cF2954D,
                                spreadRadius: 1,
                              ),
                              BoxShadow(
                                color: AppColors.c000000.withOpacity(0.25),
                                blurRadius: 12,
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          child: Text(
                            "Start Quiz",
                            style: AppTextStyle.interThin.copyWith(
                              color: AppColors.cF2F2F2,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
