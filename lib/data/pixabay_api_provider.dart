import 'package:flutter/material.dart';
import 'package:image_search/data/pixabay_api.dart';

class PixabayApiProvider extends InheritedWidget {
  final PixabayApi api;

  PixabayApiProvider({required this.api, required super.child});

  static PixabayApiProvider of(BuildContext context) {
    final PixabayApiProvider? result = context.dependOnInheritedWidgetOfExactType<PixabayApiProvider>();
    // result != null: null이 아니어야 됨
    // 즉 만약에 null이라면...
    assert(result != null, 'No PixabayApiProvider found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(PixabayApiProvider oldWidget) {
    return oldWidget.api != api;
  }
}
