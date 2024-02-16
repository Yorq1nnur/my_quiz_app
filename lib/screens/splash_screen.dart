import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../data/data_repo.dart';
import '../subject_screen/subject_screen.dart';
import '../utils/images/app_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _init();
    super.initState();
  }

  _init() async {
    DataRepo.instance.loadSubjects();
    Future.delayed(
      const Duration(
        seconds: 5,
      ),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const SubjectScreen();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(AppImages.quizAnimation),
      ),
    );
  }
}
