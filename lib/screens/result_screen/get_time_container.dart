import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/styles/app_text_style.dart';

class GetTimeContainer extends StatelessWidget {
  const GetTimeContainer({
    super.key,
    required this.containerColor,
    required this.iconPath,
    required this.title,
    required this.description,
  });

  final Color containerColor;
  final String iconPath;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10.h,
        horizontal: 20.w,
      ),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(
          16.r,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.c000000.withOpacity(
              0.25,
            ),
            blurRadius: 12.w,
            offset: Offset(
              0,
              5.r,
            ),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            iconPath,
            height: 20.h,
            width: 20.w,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            title,
            style: AppTextStyle.interBold.copyWith(
              color: AppColors.cF2F2F2,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            description,
            style: AppTextStyle.interBold.copyWith(
              color: AppColors.cF2F2F2,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
