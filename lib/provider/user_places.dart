
import 'package:riverpod/riverpod.dart';
import 'package:untitled/models/place_model.dart';

class UserPlacesNotifier extends StateNotifier<List<PlaceModel>> {
  UserPlacesNotifier() : super(const []);

  void addPlace(String title) {
    final newPlace = PlaceModel(title: title);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider =
StateNotifierProvider<UserPlacesNotifier, List<PlaceModel>>(
      (ref) => UserPlacesNotifier(),
);