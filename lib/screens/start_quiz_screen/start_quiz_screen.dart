import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_quiz_app/models/answers_report.dart';
import 'package:my_quiz_app/models/subject_model.dart';
import 'package:my_quiz_app/screens/result_screen/result_screen.dart';
import 'package:my_quiz_app/screens/start_quiz_screen/start_quiz_appbar.dart';
import 'package:my_quiz_app/screens/start_quiz_screen/start_quiz_bottom.dart';
import 'package:my_quiz_app/screens/start_quiz_screen/variant_item.dart';
import 'package:my_quiz_app/utils/colors/app_colors.dart';
import '../../models/quiz_model.dart';
import '../../utils/images/app_images.dart';
import '../../utils/styles/app_text_style.dart';

class StartQuizScreen extends StatefulWidget {
  const StartQuizScreen({
    super.key,
    required this.time,
    required this.subjectName,
    required this.subjectModel,
  });

  final SubjectModel subjectModel;
  final int time;
  final String subjectName;

  @override
  State<StartQuizScreen> createState() => _StartQuizScreenState();
}

class _StartQuizScreenState extends State<StartQuizScreen> {
  List<QuizModel> questions = [];
  int activeIndex = 0;
  int selectedIndex = 0;
  int questionIndex = 0;
  int timeCount = 0;
  int trueAnswers = 0;
  int levelTime = 0;

  Map<int, int> selectedAnswers = {};

  Future<void> _timerLogic() async {
    for (int i = 0; i < questions.length * levelTime; i++) {
      await Future.delayed(const Duration(seconds: 1));
      setState(() {
        timeCount = i + 1;
      });
    }

    _navigateToResultScreen();
  }

  @override
  void initState() {
    if (widget.subjectModel.level.name == "easy") {
      levelTime = 20;
    } else if (widget.subjectModel.level.name == "medium") {
      levelTime = 30;
    } else {
      levelTime = 60;
    }
    questions = widget.subjectModel.questions;
    for (int i = 0; i < questions.length; i++) {
      selectedAnswers[i] = 0;
    }
    _timerLogic();
    super.initState();
  }

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
            StartQuizAppBar(
              title: widget.subjectName,
              submitOnTap: _navigateToResultScreen,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.subjectName,
                    style: AppTextStyle.interBold.copyWith(
                      color: Colors.grey,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        AppImages.clock,
                        height: 22.h,
                        width: 22.w,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        getMinutelyText(timeCount),
                        style: AppTextStyle.interBold.copyWith(
                          color: AppColors.cF2F2F2,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: LinearProgressIndicator(
                color: AppColors.cF2954D,
                backgroundColor: AppColors.c162023,
                value: timeCount / (questions.length * levelTime),
                minHeight: 10.h,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            SizedBox(
              height: 14.h,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.c162023,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(
                      40.r,
                    ),
                    topLeft: Radius.circular(
                      40.r,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.symmetric(
                          vertical: 36.h,
                          horizontal: 20.w,
                        ),
                        children: [
                          RichText(
                            text: TextSpan(
                              text: "Q.${activeIndex + 1}",
                              style: AppTextStyle.interBold.copyWith(
                                color: AppColors.cF2F2F2,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              children: [
                                TextSpan(
                                  text: "/${questions.length}",
                                  style: AppTextStyle.interBold.copyWith(
                                    color: AppColors.cF2F2F2,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            questions[activeIndex].questionText,
                            style: AppTextStyle.interBold.copyWith(
                              color: AppColors.cF2F2F2,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          VariantItem(
                            onTap: () {
                              setState(
                                () {
                                  selectedIndex = 1;
                                },
                              );
                            },
                            isSelected: selectedIndex == 1,
                            caption: "A",
                            variantText: questions[activeIndex].variant1,
                          ),
                          VariantItem(
                            onTap: () {
                              setState(
                                () {
                                  selectedIndex = 2;
                                },
                              );
                            },
                            isSelected: selectedIndex == 2,
                            caption: "B",
                            variantText: questions[activeIndex].variant2,
                          ),
                          VariantItem(
                            onTap: () {
                              setState(
                                () {
                                  selectedIndex = 3;
                                },
                              );
                            },
                            isSelected: selectedIndex == 3,
                            caption: "C",
                            variantText: questions[activeIndex].variant3,
                          ),
                          VariantItem(
                            onTap: () {
                              setState(
                                () {
                                  selectedIndex = 4;
                                },
                              );
                            },
                            isSelected: selectedIndex == 4,
                            caption: "D",
                            variantText: questions[activeIndex].variant4,
                          ),
                        ],
                      ),
                    ),
                    StartQuizBottom(
                      previousOnTap: () {
                        if (activeIndex >= 1) {
                          activeIndex--;
                          questionIndex--;
                          selectedIndex = selectedAnswers[activeIndex]!;
                        }
                        setState(
                          () {},
                        );
                      },
                      nextOnTap: () {
                        selectedAnswers[activeIndex] = selectedIndex;
                        if (activeIndex < questions.length - 1) {
                          selectedIndex = 0;
                          activeIndex++;
                          questionIndex++;
                        }
                        setState(
                          () {},
                        );
                      },
                      previousButtonVisibility: activeIndex != 0,
                      nextButtonVisibility: activeIndex != questions.length - 1,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _navigateToResultScreen() {
    selectedAnswers[activeIndex] = selectedIndex;
    print(selectedAnswers);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(
          answersReport: AnswersReport(
              subjectModel: widget.subjectModel,
              selectedAnswers: selectedAnswers,
              spentTime: questions.length * levelTime - timeCount,
              levelTime: levelTime),
        ),
      ),
    );
  }
}

String getMinutelyText(int timeInSeconds) {
  int min = timeInSeconds ~/ 60;
  int sec = timeInSeconds % 60;

  String minute = min.toString().length <= 1 ? "0$min" : "$min";
  String second = sec.toString().length <= 1 ? "0$sec" : "$sec";

  return "$minute : $second";
}
