import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quiz_app/screens/description_screen/scroll_text.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/styles/app_text_style.dart';
import 'bottom_items.dart';

class CenterContainer extends StatefulWidget {
  const CenterContainer({
    super.key,
    required this.containerColor,
    required this.imagePath,
    required this.subjectName,
    required this.subjectCount,
    required this.onTap,
    required this.description,
  });

  final Color containerColor;
  final String imagePath;
  final String subjectName;
  final int subjectCount;
  final VoidCallback onTap;
  final String description;

  @override
  State<CenterContainer> createState() => _CenterContainerState();
}

class _CenterContainerState extends State<CenterContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
            ScrollText(
              description: widget.description,
            ),
            BottomItems(
              subjectCount: widget.subjectCount,
              onTap: widget.onTap,
            ),
          ],
        ),
      ),
    );
  }
}