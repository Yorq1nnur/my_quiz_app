import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../../utils/styles/app_text_style.dart';

class BottomItems extends StatefulWidget {
  const BottomItems({super.key, required this.subjectCount, required this.onTap});

  final int subjectCount;
  final VoidCallback onTap;

  @override
  State<BottomItems> createState() => _BottomItemsState();
}

class _BottomItemsState extends State<BottomItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
