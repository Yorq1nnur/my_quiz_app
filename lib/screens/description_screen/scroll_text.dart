import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/styles/app_text_style.dart';

class ScrollText extends StatefulWidget {
  const ScrollText({super.key, required this.description});

  final String description;

  @override
  State<ScrollText> createState() => _ScrollTextState();
}

class _ScrollTextState extends State<ScrollText> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Text(
          widget.description,
          style: AppTextStyle.interBold.copyWith(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
