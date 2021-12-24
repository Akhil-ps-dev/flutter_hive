import 'package:flutter/widgets.dart';
import 'package:flutter_hive/models/dart_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

ValueNotifier<List<StudentList>> studentListNorifier = ValueNotifier([]);

Future<void> addStudent(StudentList value) async {
//  studentListNorifier.value.add(value);

  final studentDB = await Hive.openBox<StudentList>('student_db');
  studentDB.add(value);

  studentListNorifier.notifyListeners();
}
