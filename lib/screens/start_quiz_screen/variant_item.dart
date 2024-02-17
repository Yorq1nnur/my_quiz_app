import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/styles/app_text_style.dart';

class VariantItem extends StatefulWidget {
  const VariantItem({
    super.key,
    required this.onTap,
    required this.isSelected,
    required this.caption,
    required this.variantText,
  });

  final VoidCallback onTap;
  final bool isSelected;
  final String caption;
  final String variantText;

  @override
  State<VariantItem> createState() => _VariantItemState();
}

class _VariantItemState extends State<VariantItem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.transparent,
      child: Ink(
        padding: EdgeInsets.only(
          top: 14.h,
          bottom: 14.h,
        ),
        child: InkWell(
          onTap: widget.onTap,
          borderRadius: BorderRadius.circular(
            16.r,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 12.h,
              horizontal: 20.w,
            ),
            decoration: BoxDecoration(
              color: widget.isSelected ? AppColors.cF2954D : AppColors.c273032,
              borderRadius: BorderRadius.circular(
                16.r,
              ),
            ),
            child: Row(
              children: [
                Text(
                  "${widget.caption}.",
                  style: AppTextStyle.interBold.copyWith(
                    color: AppColors.cF2F2F2,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Text(
                  widget.variantText,
                  style: AppTextStyle.interBold.copyWith(
                    color: AppColors.cF2F2F2,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
