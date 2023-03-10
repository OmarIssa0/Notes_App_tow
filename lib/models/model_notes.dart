import 'package:hive/hive.dart';

class ModelNotes extends HiveObject {
  String title;
  String subtitle;
  final String date;

  ModelNotes(
    this.date, {
    required this.title,
    required this.subtitle,
  });
}
