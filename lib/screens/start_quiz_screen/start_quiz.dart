import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/images/app_images.dart';

class StartQuizScreen extends StatefulWidget {
  const StartQuizScreen({super.key});

  @override
  State<StartQuizScreen> createState() => _StartQuizScreenState();
}

class _StartQuizScreenState extends State<StartQuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){},icon: SvgPicture.asset(AppImages.arrowBack),),
      ),
    );
  }
}
