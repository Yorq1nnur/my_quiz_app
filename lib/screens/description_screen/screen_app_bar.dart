import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../../utils/styles/app_text_style.dart';

class ScreenAppBar extends StatefulWidget {
  const ScreenAppBar({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  State<ScreenAppBar> createState() => _ScreenAppBarState();
}

class _ScreenAppBarState extends State<ScreenAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
            onTap: widget.onTap,
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
            widget.title,
            style: AppTextStyle.interBold.copyWith(
              color: AppColors.cF2F2F2,
              fontWeight: FontWeight.w500,
              fontSize: 20.sp,
            ),
          )
        ],
      ),
    );
  }
}
