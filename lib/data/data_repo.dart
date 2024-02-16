import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/subject_model.dart';
import '../utils/images/app_images.dart';

class DataRepo {

  DataRepo._();



  static final DataRepo instance = DataRepo._();

  factory DataRepo() =>instance;


  List <SubjectModel> allSubjects=[];

   Future<void> loadSubjects() async {
    var data = await rootBundle.loadString(AppImages.dataQuiz);

    var decodedData = jsonDecode(data);
     allSubjects = (decodedData["data"] as List?)
            ?.map((e) => SubjectModel.fromJson(e))
            .toList() ??
        [];


  }
}
