import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_quiz_app/models/get_minutly_text.dart';
import 'package:my_quiz_app/screens/description_screen/center_container.dart';
import 'package:my_quiz_app/screens/description_screen/screen_app_bar.dart';
import '../../utils/colors/app_colors.dart';

class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen(
      {super.key,
      required this.subjectName,
      required this.subjectCount,
      required this.description,
      required this.imagePath,
      required this.containerColor,
      required this.onTap,
      required this.level});

  final String subjectName;
  final String level;
  final String imagePath;
  final String description;
  final int subjectCount;
  final Color containerColor;
  final VoidCallback onTap;

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  int levelTime = 0;

  @override
  void initState() {
    if (widget.level == "easy") {
      levelTime = 20;
    } else if (widget.level == "medium") {
      levelTime = 30;
    } else {
      levelTime = 60;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(statusBarColor: AppColors.transparent),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ScreenAppBar(
              title: "QUIZNI BOSHLASH",
              onTap: () {
                Navigator.pop(context);
              },
            ),
            CenterContainer(
              containerColor: widget.containerColor,
              imagePath: widget.imagePath,
              subjectName: widget.subjectName,
              subjectCount: getMinutelyText(levelTime * widget.subjectCount),
              onTap: widget.onTap,
              description: widget.description,
              countSubject: widget.subjectCount,
            ),
          ],
        ),
      ),
    );
  }
}
