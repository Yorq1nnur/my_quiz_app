import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/styles/app_text_style.dart';

class GetTrueAnswersContainer extends StatelessWidget {
  const GetTrueAnswersContainer({
    super.key,
    required this.containerColor,
    required this.answersCount,
    required this.check,
    required this.horizontalPadding,
  });

  final Color containerColor;
  final int answersCount;
  final String check;
  final int horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 12.h,
        horizontal: horizontalPadding.w,
      ),
      decoration: BoxDecoration(
        color: containerColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.c000000.withOpacity(0.25),
            blurRadius: 12.r,
            offset: Offset(0, 5.r),
          ),
        ],
        borderRadius: BorderRadius.circular(
          16.r,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            answersCount.toString(),
            style: AppTextStyle.interBold.copyWith(
              color: AppColors.cF2F2F2,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            check,
            style: AppTextStyle.interBold.copyWith(
              color: AppColors.cF2F2F2,
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
