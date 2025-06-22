import 'dart:async';

import 'package:image_search/data/photo_api_respository.dart';
import 'package:image_search/model/photo.dart';

class HomeViewModel {
  final PhotoApiRepository photoApiRepository;

  final _photoStreamController = StreamController<List<Photo>>()..add([]);
  Stream<List<Photo>> get photoStream => _photoStreamController.stream;

  HomeViewModel(this.photoApiRepository);

  Future<void> fetch(String query) async {
    final result = await photoApiRepository.fetch(query);
    _photoStreamController.add(result);
  }
}