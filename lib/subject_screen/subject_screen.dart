import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quiz_app/screens/description_screen/description_screen.dart';
import 'package:my_quiz_app/subject_screen/widget/subject_item.dart';
import '../data/data_repo.dart';
import '../models/subject_model.dart';
import '../screens/start_quiz_screen/start_quiz.dart';
import '../utils/colors/app_colors.dart';
import '../utils/styles/app_text_style.dart';

class SubjectScreen extends StatefulWidget {
  const SubjectScreen({super.key});

  @override
  State<SubjectScreen> createState() => _SubjectScreenState();
}

class _SubjectScreenState extends State<SubjectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c0E81B4,
      appBar: AppBar(
        backgroundColor: AppColors.c0E81B4,
        title: Text(
          "Fanni tanlang",
          style: AppTextStyle.interMedium
              .copyWith(color: AppColors.black, fontSize: 30.sp),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ...List.generate(
              DataRepo().allSubjects.length,
              (index) {
                SubjectModel subject = DataRepo().allSubjects[index];
                return SubjectItem(
                  time: "${subject.questions.length * 1}",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const StartQuizScreen();
                        },
                      ),
                    );
                  },
                  subjectModel: subject,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  DescriptionScreen(subjectName: subject.subjectName,)));
                  }, countQuestions: subject.questions.length,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
