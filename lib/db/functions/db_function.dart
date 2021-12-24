import 'package:flutter/widgets.dart';
import 'package:flutter_hive/models/dart_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

ValueNotifier<List<StudentList>> studentListNorifier = ValueNotifier([]);

Future<void> addStudent(StudentList value) async {
//  studentListNorifier.value.add(value);

  final studentDB = await Hive.openBox<StudentList>('student_db');
  final _id = await studentDB.add(value);
  value.id = _id;

  studentListNorifier.notifyListeners();
}

Future<void> getAllStudentList() async {
  final studentDB = await Hive.openBox<StudentList>('student_db');
  studentListNorifier.value.clear();

  studentListNorifier.value.addAll(studentDB.values);
  studentListNorifier.notifyListeners();
}

Future<void> deleteStudentList(int id) async {
  final studentDB = await Hive.openBox<StudentList>('student_db');
  await studentDB.delete(id);

  getAllStudentList();
}
