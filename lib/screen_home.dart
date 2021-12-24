import 'package:flutter/material.dart';
import 'package:flutter_hive/widget/add_student_widget.dart';
import 'package:flutter_hive/widget/list_student_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          AddStudentWidget(),
          const Expanded(child: ListStudentWidget())
        ],
      )),
    );
  }
}
