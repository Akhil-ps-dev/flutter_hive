import 'package:flutter/material.dart';
import 'package:flutter_hive/db/functions/db_function.dart';
import 'package:flutter_hive/models/dart_model.dart';

class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      builder:
          (BuildContext ctx, List<StudentList> studentList, Widget? child) {
        return ListView.separated(
          itemBuilder: (context, index) {
            final data = studentList[index];

            return ListTile(
              title: Text(data.name),
              subtitle: Text(data.age),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: studentList.length,
        );
      },
      valueListenable: studentListNorifier,
    );
  }
}
