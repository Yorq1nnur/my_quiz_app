import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../../utils/styles/app_text_style.dart';

class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen(
      {super.key,
      required this.subjectName,
      required this.subjectCount,
      required this.description,
      required this.imagePath,
      required this.containerColor,
      required this.onTap});

  final String subjectName;
  final String imagePath;
  final String description;
  final int subjectCount;
  final Color containerColor;
  final VoidCallback onTap;

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
                    "QUIZNI BOSHLASH",
                    style: AppTextStyle.interBold.copyWith(
                      color: AppColors.cF2F2F2,
                      fontWeight: FontWeight.w500,
                      fontSize: 20.sp,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
                decoration: BoxDecoration(
                  color: widget.containerColor,
                  boxShadow: [
                    BoxShadow(
                      color: widget.containerColor.withOpacity(
                        0.5,
                      ),
                      spreadRadius: 5,
                    )
                  ],
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
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40.r),
                      child: Image.asset(
                        widget.imagePath,
                        height: 250.h,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
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
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "SAVOLLAR SONI:",
                            style: AppTextStyle.interBold.copyWith(
                                color: AppColors.c2F3739,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            widget.subjectCount.toString(),
                            style: AppTextStyle.interBold.copyWith(
                              color: AppColors.cF2F2F2,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "UMUMIY VAQT:",
                            style: AppTextStyle.interBold.copyWith(
                                color: AppColors.c2F3739,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "${widget.subjectCount}:00",
                            style: AppTextStyle.interBold.copyWith(
                              color: AppColors.cF2F2F2,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: Text(
                        "TAVSIF:",
                        style: AppTextStyle.interBold.copyWith(
                          color: Colors.white70,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Text(
                          widget.description,
                          style: AppTextStyle.interBold.copyWith(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
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
                            offset: const Offset(0, 4),
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
                              boxShadow: const [
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
                                  "${widget.subjectCount}:00",
                                  style: AppTextStyle.interThin.copyWith(
                                      color: AppColors.cF2F2F2,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          ZoomTapAnimation(
                            onTap: widget.onTap,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 12.h,
                                horizontal: 20.w,
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
                                "Quizni boshlash",
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
            ),
          ],
        ),
      ),
    );
  }
}
