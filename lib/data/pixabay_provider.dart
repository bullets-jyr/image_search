// import 'package:flutter/material.dart';
// import 'package:image_search/ui/home_view_model.dart';
//
// class PixabayProvider extends InheritedWidget {
//   // 기능
//   // final PixabayApi api;
//
//   // 데이터
//   // final _photoStreamController = StreamController<List<Photo>>()..add([]);
//   // Stream<List<Photo>> get photoStream => _photoStreamController.stream;
//
//   final HomeViewModel homeViewModel;
//
//   PixabayProvider({
//     // required this.api,
//     required this.homeViewModel,
//     required super.child,
//   });
//
//   static PixabayProvider of(BuildContext context) {
//     final PixabayProvider? result = context
//         .dependOnInheritedWidgetOfExactType<PixabayProvider>();
//     // result != null: null이 아니어야 됨
//     // 즉 만약에 null이라면...
//     assert(result != null, 'No PixabayApiProvider found in context');
//     return result!;
//   }
//
//   // Future<void> fetch(String query) async {
//   //   final result = await api.fetch(query);
//   //   _photoStreamController.add(result);
//   // }
//
//   @override
//   bool updateShouldNotify(PixabayProvider oldWidget) {
//     // return oldWidget.api != api;
//     return true;
//   }
// }
