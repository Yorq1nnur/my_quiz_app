import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quiz_app/models/answers_report.dart';
import 'package:my_quiz_app/screens/result_screen/get_bottom_items.dart';
import 'package:my_quiz_app/screens/result_screen/get_subject_item.dart';
import 'package:my_quiz_app/screens/result_screen/get_time_container.dart';
import 'package:my_quiz_app/screens/result_screen/get_true_answers_container.dart';
import 'package:my_quiz_app/screens/result_screen/widget_app_bar.dart';
import 'package:my_quiz_app/screens/start_quiz_screen/start_quiz_screen.dart';
import 'package:my_quiz_app/utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../../utils/styles/app_text_style.dart';
import '../subject_screen/subject_screen.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({
    super.key,
    required this.answersReport,
  });

  final AnswersReport answersReport;

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
                    subjectName: widget.answersReport.subjectModel.subjectName,
                    subjectDescription:
                        widget.answersReport.subjectModel.description,
                    trueAnswersCount: widget.answersReport.trueAnswersCount,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.w,
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
                        SizedBox(
                          height: 120.h,
                          width: 120.h,
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 110.sp,
                                width: 110.sp,
                                child: Transform.rotate(
                                  angle: pi,
                                  child: CircularProgressIndicator(
                                    color: AppColors.cF2954D,
                                    backgroundColor:
                                        AppColors.cF2954D.withOpacity(
                                      0.20,
                                    ),
                                    value: 0.75,
                                    //widget.answersReport.truePercentage,
                                    strokeWidth: 8.h,
                                    strokeCap: StrokeCap.round,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text:
                                        "${widget.answersReport.trueAnswersCount}",
                                    style: AppTextStyle.interBold.copyWith(
                                      color: AppColors.cF2F2F2,
                                      fontSize: 27.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "/${widget.answersReport.subjectModel.questions.length}\nyour score",
                                        style: AppTextStyle.interBold.copyWith(
                                          color: AppColors.cF2F2F2,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ]
                                  ),
                                ),
                              ),
                            ],
                          ),
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
                                      text: " this test with\n",
                                      style: AppTextStyle.interBold.copyWith(
                                        color: AppColors.cF2F2F2,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          "${widget.answersReport.truePercentage * 100} %",
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
                    child: Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GetTrueAnswersContainer(
                            containerColor: AppColors.c27AE60,
                            answersCount: widget.answersReport.trueAnswersCount,
                            check: "To'g'ri javoblar",
                            horizontalPadding: 16,
                          ),
                          GetTrueAnswersContainer(
                            containerColor: AppColors.cEB5757,
                            answersCount: widget.answersReport.falseAnswersCount,
                            check: "Noto'g'ri javoblar",
                            horizontalPadding: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.h),
                    child: Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GetTimeContainer(
                              containerColor: AppColors.cF2954D,
                              iconPath: AppImages.clock,
                              title:
                                  getMinutelyText(widget.answersReport.timeSpent),
                              description: "Umumiy vaqt"),
                          GetTimeContainer(
                              containerColor: Colors.grey,
                              iconPath: AppImages.secondClock,
                              title: getMinutelyText(
                                  widget.answersReport.averageTime),
                              description: "Oʻrtacha Vaqt / Javob"),
                        ],
                      ),
                    ),
                  ),
                  GetBottomItems(
                    check: () {},
                    again: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StartQuizScreen(
                              time: widget
                                  .answersReport.subjectModel.questions.length,
                              subjectName:
                                  widget.answersReport.subjectModel.subjectName,
                              subjectModel: widget.answersReport.subjectModel),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
