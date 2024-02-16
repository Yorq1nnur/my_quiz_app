import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../../utils/styles/app_text_style.dart';

class StartQuizAppBar extends StatelessWidget {
  const StartQuizAppBar({super.key, required this.title, required this.submitOnTap});

  final String title;
  final VoidCallback submitOnTap;

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
            width: 30.w,
          ),
          Text(
            title,
            style: AppTextStyle.interBold.copyWith(
              color: AppColors.cF2F2F2,
              fontWeight: FontWeight.w500,
              fontSize: 20.sp,
            ),
          ),
          const Spacer(),
          ZoomTapAnimation(
            onTap: submitOnTap,
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 12.h,
                horizontal: 15.w,
              ),
              decoration: BoxDecoration(
                color: AppColors.c273032,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.cF2954D,
                    spreadRadius: 2,
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
    );
  }
}
