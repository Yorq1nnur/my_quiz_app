import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/styles/app_text_style.dart';

class BottomContainer extends StatefulWidget {
  const BottomContainer({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  State<BottomContainer> createState() => _BottomContainerState();
}

class _BottomContainerState extends State<BottomContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 10.h,
          horizontal: 32.w,
        ),
        decoration: BoxDecoration(
          color: AppColors.c162023,
          borderRadius: BorderRadius.circular(
            40.r,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.c000000.withOpacity(
                0.25.r,
              ),
              blurRadius: 4.r,
              offset: Offset(
                0,
                4.r,
              ),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                  text: "Next:\n",
                  style: AppTextStyle.interBold.copyWith(
                    color: AppColors.cF2F2F2,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    TextSpan(
                      text: "Quadratic Equations",
                      style: AppTextStyle.interBold.copyWith(
                        color: AppColors.cF2F2F2,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ]),
            ),
            ZoomTapAnimation(
              onTap: widget.onTap,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 8.h,
                  horizontal: 20.w,
                ),
                decoration: BoxDecoration(
                  color: AppColors.cF2954D,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.c000000.withOpacity(
                        0.25,
                      ),
                      blurRadius: 12.r,
                      offset: Offset(
                        0,
                        5.r,
                      ),
                    ),
                  ],
                  border: Border.all(
                    color: AppColors.cF2954D,
                    width: 1.w,
                  ),
                  borderRadius: BorderRadius.circular(
                    16.r,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Go",
                    style: AppTextStyle.interBold.copyWith(
                      color: AppColors.cF2F2F2,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
