import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../../models/subject_model.dart';
import '../../../utils/colors/app_colors.dart';
import '../../../utils/styles/app_text_style.dart';

class SubjectItem extends StatelessWidget {
  const SubjectItem(
      {super.key,
      required this.time,
      required this.subjectModel,
      required this.onPressed,
      required this.countQuestions});

  final String time;
  final SubjectModel subjectModel;
  final VoidCallback onPressed;
  final int? countQuestions;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: subjectModel.color,
          borderRadius: BorderRadius.circular(
            16.r,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(
            15.w,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    subjectModel.subjectName.toString(),
                    style: AppTextStyle.interMedium.copyWith(
                      color: AppColors.white,
                      fontSize: 24.sp,
                    ),
                  ),
                  Text(
                    "$countQuestions min",
                    style: AppTextStyle.interMedium.copyWith(
                      color: AppColors.white,
                      fontSize: 24.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(subjectModel.level.name.toString(),
                      style: AppTextStyle.interMedium
                          .copyWith(color: AppColors.white, fontSize: 24.sp)),
                  Text(
                    subjectModel.questions.length.toString(),
                    style: AppTextStyle.interMedium.copyWith(
                      color: AppColors.white,
                      fontSize: 24.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
