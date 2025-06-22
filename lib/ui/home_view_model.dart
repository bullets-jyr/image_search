import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:image_search/data/photo_api_respository.dart';
import 'package:image_search/model/photo.dart';

class HomeViewModel with ChangeNotifier {
  final PhotoApiRepository photoApiRepository;

  // final _photoStreamController = StreamController<List<Photo>>()..add([]);
  // Stream<List<Photo>> get photoStream => _photoStreamController.stream;

  List<Photo> _photos = [];

  UnmodifiableListView<Photo> get photos => UnmodifiableListView(_photos);

  HomeViewModel(this.photoApiRepository);

  Future<void> fetch(String query) async {
    final result = await photoApiRepository.fetch(query);
    // _photoStreamController.add(result);
    _photos = result;
    notifyListeners();
  }
}
