import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/styles/app_text_style.dart';

class StartQuizBottom extends StatefulWidget {
  const StartQuizBottom({
    super.key,
    required this.previousOnTap,
    required this.nextOnTap,
    required this.previousButtonVisibility,
    required this.nextButtonVisibility,
  });

  final VoidCallback previousOnTap;
  final VoidCallback nextOnTap;
  final bool previousButtonVisibility;
  final bool nextButtonVisibility;

  @override
  State<StartQuizBottom> createState() => _StartQuizBottomState();
}

class _StartQuizBottomState extends State<StartQuizBottom> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 20.h,
        right: 20.w,
        left: 20.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Visibility(
            visible: widget.previousButtonVisibility,
            child: ZoomTapAnimation(
              onTap: widget.previousOnTap,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 12.h,
                ),
                decoration: BoxDecoration(
                  color: AppColors.c273032,
                  borderRadius: BorderRadius.circular(16.r),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.c000000.withOpacity(0.25),
                      blurRadius: 12.r,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Oldingisi",
                    style: AppTextStyle.interBold.copyWith(
                        color: AppColors.cBDBDBD,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: widget.nextButtonVisibility,
            child: ZoomTapAnimation(
              onTap: widget.nextOnTap,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 12.h,
                ),
                decoration: BoxDecoration(
                  color: AppColors.cF2954D,
                  border: Border.all(color: AppColors.cF2954D, width: 1.r),
                  borderRadius: BorderRadius.circular(16.r),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.c000000.withOpacity(0.25),
                      blurRadius: 12.r,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Keyingisi",
                    style: AppTextStyle.interBold.copyWith(
                        color: AppColors.cBDBDBD,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
