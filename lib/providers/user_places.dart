import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/place.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier() : super(const []);

  void addPlace(String title) {
    final newPlace = Place(title);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider = StateNotifierProvider((ref) => UserPlacesNotifier());
