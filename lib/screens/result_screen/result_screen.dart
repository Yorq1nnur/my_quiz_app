import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quiz_app/models/subject_model.dart';
import 'package:my_quiz_app/screens/result_screen/bottom_container.dart';
import 'package:my_quiz_app/screens/result_screen/get_bottom_items.dart';
import 'package:my_quiz_app/screens/result_screen/get_subject_item.dart';
import 'package:my_quiz_app/screens/result_screen/get_time_container.dart';
import 'package:my_quiz_app/screens/result_screen/get_true_answers_container.dart';
import 'package:my_quiz_app/screens/result_screen/widget_app_bar.dart';
import 'package:my_quiz_app/utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../../utils/styles/app_text_style.dart';
import '../subject_screen/subject_screen.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({
    super.key,
    required this.subjectModel, required this.trueAnswers,
  });

  final int trueAnswers;
  final SubjectModel subjectModel;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent,
      ),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 50.h,
                left: 35.w,
                right: 35.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WidgetAppBar(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SubjectScreen(),
                        ),
                      );
                    },
                  ),
                  GetSubjectItem(
                    subjectName: widget.subjectModel.subjectName,
                    subjectDescription: widget.subjectModel.description,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 50.w,
                      vertical: 20.h,
                    ),
                    margin: EdgeInsets.only(
                      bottom: 20.h,
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
                          offset: Offset(
                            0,
                            5.r,
                          ),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircularProgressIndicator(
                          color: AppColors.cF2954D,
                          value: 0.65,
                          strokeWidth: 10.w,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          strokeCap: StrokeCap.butt,
                          valueColor: const AlwaysStoppedAnimation<Color>(
                              AppColors.cF2954D),
                          backgroundColor: AppColors.cF2954D.withOpacity(0.5),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 150.w,
                              child: RichText(
                                text: TextSpan(
                                  text: "Congratulations!You have",
                                  style: AppTextStyle.interBold.copyWith(
                                    color: AppColors.cF2F2F2,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: " passed",
                                      style: AppTextStyle.interBold.copyWith(
                                        color: AppColors.c6FCF97,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " this test with ",
                                      style: AppTextStyle.interBold.copyWith(
                                        color: AppColors.cF2F2F2,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " 80%.",
                                      style: AppTextStyle.interBold.copyWith(
                                        color: AppColors.cF2954D,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.h),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GetTrueAnswersContainer(
                          containerColor: AppColors.c27AE60,
                          answersCount: "8",
                          check: "To'g'ri javoblar",
                          horizontalPadding: 16,
                        ),
                        GetTrueAnswersContainer(
                          containerColor: AppColors.cEB5757,
                          answersCount: "2",
                          check: "Noto'g'ri javoblar",
                          horizontalPadding: 30,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.h),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GetTimeContainer(
                            containerColor: AppColors.cF2954D,
                            iconPath: AppImages.clock,
                            title: "12m 20sec",
                            description: "Umumiy vaqt"),
                        GetTimeContainer(
                            containerColor: Colors.grey,
                            iconPath: AppImages.secondClock,
                            title: "2m 28sec",
                            description: "Oʻrtacha Vaqt / Javob"),
                      ],
                    ),
                  ),
                  GetBottomItems(
                    check: () {},
                    again: () {},
                  ),
                ],
              ),
            ),
            const Spacer(),
            BottomContainer(
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}