import 'package:hive_flutter/hive_flutter.dart';
part 'dart_model.g.dart';

@HiveType(typeId: 1)
class StudentList {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String age;

  StudentList({required this.name, required this.age});
}
