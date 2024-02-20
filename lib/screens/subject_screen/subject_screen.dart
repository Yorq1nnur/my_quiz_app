import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quiz_app/screens/description_screen/description_screen.dart';
import 'package:my_quiz_app/screens/subject_screen/widget/subject_item.dart';
import '../../data/data_repo.dart';
import '../../models/subject_model.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/styles/app_text_style.dart';
import '../start_quiz_screen/start_quiz_screen.dart';

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
                  subjectModel: subject,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DescriptionScreen(
                          subjectName: subject.subjectName,
                          subjectCount: subject.questions.length,
                          description: subject.description,
                          imagePath: subject.image,
                          containerColor: subject.color,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StartQuizScreen(
                                  time: subject.questions.length,
                                  subjectName: subject.subjectName,
                                  subjectModel: subject,
                                ),
                              ),
                            );
                          }, level: subject.level.name,
                        ),
                      ),
                    );
                  },
                  countQuestions: subject.questions.length,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
