import 'dart:io';

import 'package:uuid/uuid.dart';

const uuid = Uuid();

class PlaceLocation {
  PlaceLocation({
    required this.longitude,
    required this.latitude,
    required this.address,
  });

  final double latitude;
  final double longitude;
  final String address;
}

class Place {
  Place({required this.title,
    required this.location,
    required this.image})
    : id = uuid.v4();

  String id;
  final String title;
  final File image;
  final PlaceLocation location;
}
