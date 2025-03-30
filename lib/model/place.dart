import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Place {
  Place(this.title) : id = uuid.v4();

  String id;
  final String title;
}