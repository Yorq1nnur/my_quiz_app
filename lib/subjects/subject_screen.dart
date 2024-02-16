import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_quiz_app/subjects/widget/subject_item.dart';
import '../data/data_repo.dart';
import '../models/subject_model.dart';
import '../screens/start_quiz/start_quiz.dart';
import '../utils/colors/app_colors.dart';
import '../utils/images/app_images.dart';
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
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AppImages.arrowBack,
            height: 24.h,
            width: 24.w,
            fit: BoxFit.cover,
            colorFilter:
                const ColorFilter.mode(AppColors.black, BlendMode.srcIn),
          ),
        ),
      ),
      body: Column(
        children: [
          ...List.generate(
            DataRepo().allSubjects.length,
            (index) {
              SubjectModel subject = DataRepo().allSubjects[index];
              return SubjectItem(
                time: "12:00",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const StartQuiz();
                      },
                    ),
                  );
                },
                subjectModel: subject,
              );
            },
          ),
        ],
      ),
    );
  }
}
