import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_search/data/pixabay_api.dart';
import 'package:image_search/model/photo.dart';

class PixabayApiProvider extends InheritedWidget {
  final PixabayApi api;

  final _photoStreamController = StreamController<List<Photo>>()..add([]);
  Stream<List<Photo>> get photoStream => _photoStreamController.stream;

  PixabayApiProvider({required this.api, required super.child});

  static PixabayApiProvider of(BuildContext context) {
    final PixabayApiProvider? result = context.dependOnInheritedWidgetOfExactType<PixabayApiProvider>();
    // result != null: null이 아니어야 됨
    // 즉 만약에 null이라면...
    assert(result != null, 'No PixabayApiProvider found in context');
    return result!;
  }

  Future<void> fetch(String query) async {
    final result = await api.fetch(query);
    _photoStreamController.add(result);
  }

  @override
  bool updateShouldNotify(PixabayApiProvider oldWidget) {
    return oldWidget.api != api;
  }
}
