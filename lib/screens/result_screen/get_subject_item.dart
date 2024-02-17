import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/styles/app_text_style.dart';

class GetSubjectItem extends StatelessWidget {
  const GetSubjectItem(
      {super.key, required this.subjectName, required this.subjectDescription});

  final String subjectName;
  final String subjectDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20.h,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 16.h,
        horizontal: 20.w,
      ),
      decoration: BoxDecoration(
        color: AppColors.c162023,
        border: Border.all(
          color: AppColors.c2F3739,
          width: 1.w,
        ),
        borderRadius: BorderRadius.circular(
          16.r,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.c000000.withOpacity(0.25),
            blurRadius: 12.r,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subjectName,
            style: AppTextStyle.interBold.copyWith(
              color: AppColors.cF2F2F2,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            subjectDescription,
            style: AppTextStyle.interBold.copyWith(
                color: AppColors.cF2F2F2.withOpacity(0.5),
                fontSize: 13.sp,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
