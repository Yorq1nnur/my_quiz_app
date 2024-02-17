import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../../utils/styles/app_text_style.dart';

class GetBottomItems extends StatelessWidget {
  const GetBottomItems({
    super.key,
    required this.check,
    required this.again,
  });

  final VoidCallback check;
  final VoidCallback again;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ZoomTapAnimation(
          onTap: check,
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 12.h,
              horizontal: 20.w,
            ),
            margin: EdgeInsets.only(
              bottom: 20.h,
            ),
            decoration: BoxDecoration(
              color: AppColors.cF2954D.withOpacity(0.5),
              border: Border.all(
                color: AppColors.cF2954D,
                width: 1.w,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.c000000.withOpacity(0.25),
                  blurRadius: 12.r,
                  offset: Offset(
                    0,
                    5.r,
                  ),
                ),
              ],
              borderRadius: BorderRadius.circular(
                16.r,
              ),
            ),
            child: Center(
              child: Text(
                "Javoblarni tekshirish",
                style: AppTextStyle.interBold.copyWith(
                    color: AppColors.cF2F2F2,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
        ZoomTapAnimation(
          onTap: again,
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 12.h,
              horizontal: 20.w,
            ),
            margin: EdgeInsets.only(
              bottom: 20.h,
            ),
            decoration: BoxDecoration(
              color: AppColors.cF2954D,
              border: Border.all(
                color: AppColors.cF2954D,
                width: 1.w,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.c000000.withOpacity(0.25),
                  blurRadius: 12.r,
                  offset: Offset(
                    0,
                    5.r,
                  ),
                ),
              ],
              borderRadius: BorderRadius.circular(
                16.r,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppImages.again,
                  height: 24.h,
                  width: 24.w,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "Qaytadan yechish",
                  style: AppTextStyle.interBold.copyWith(
                      color: AppColors.cF2F2F2,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
