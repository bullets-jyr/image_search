import 'package:flutter_test/flutter_test.dart';
import 'package:image_search/data/photo_api_respository.dart';
import 'package:image_search/data/pixabay_api.dart';
import 'package:image_search/model/photo.dart';
import 'package:image_search/ui/home_view_model.dart';

void main() {
  test('The stream should function correctly.', () async {
    final homeViewModel = HomeViewModel(FakePhotoApiRepository());

    await homeViewModel.fetch('apple');

    final result = fakeJson.map((e) => Photo.fromJson(e)).toList();

    expect(
      homeViewModel.photos,
      result
      // emitsInOrder([
      //   // isA<List<Photo>>(),
      //   equals([]),
      //   equals(result),
      //   equals(result),
      // ]),
    );
  });
}

class FakePhotoApiRepository extends PhotoApiRepository {
  @override
  Future<List<Photo>> fetch(String query) async {
    Future.delayed(const Duration(milliseconds: 500));

    return fakeJson.map((e) => Photo.fromJson(e)).toList();
  }
}

List<Map<String, dynamic>> fakeJson = [
  {
    "id": 1702316,
    "pageURL": "https://pixabay.com/photos/apple-red-fruit-red-chief-1702316/",
    "type": "photo",
    "tags":
        "apple, red, fruit, red chief, red apple, fresh apple, ripe, ripe apple, fresh, fresh fruit, harvest, produce, organic, healthy, food, close up, apple, apple, apple, apple, apple",
    "previewURL":
        "https://cdn.pixabay.com/photo/2016/09/29/08/33/apple-1702316_150.jpg",
    "previewWidth": 150,
    "previewHeight": 116,
    "webformatURL":
        "https://pixabay.com/get/g4a1ab2b716d24c2c8af055dc85d37fd0b7cb1087df09632623f01fd1848e72c8826570e3505e74b5ede860d06f4fc558b1549d72635144a8121ed4f4348922de_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 495,
    "largeImageURL":
        "https://pixabay.com/get/g2f5070c3cf12ca8096a4a0570396cd4024f49bb5d70f356ae651e7ba5cf2ba7e77890e1779e2a42b25bdaae6a787a0b8860a11ab2a254afb4e9968c0cfd85311_1280.jpg",
    "imageWidth": 4000,
    "imageHeight": 3099,
    "imageSize": 1930833,
    "views": 186808,
    "downloads": 127532,
    "collections": 387,
    "likes": 392,
    "comments": 35,
    "user_id": 2364555,
    "user": "NoName_13",
    "userImageURL":
        "https://cdn.pixabay.com/user/2022/12/12/07-40-59-226_250x250.jpg",
    "noAiTraining": false,
  },
  {
    "id": 2788616,
    "pageURL": "https://pixabay.com/photos/apple-red-red-apple-2788616/",
    "type": "photo",
    "tags":
        "apple, red, red apple, apple plantation, yummy, fruit, vitamins, fresh, nature, healthy, ripe, pome fruit family, apple trees, orchards, trees, fruit trees, fall, harvest, harvested, apple, apple, apple, apple, apple",
    "previewURL":
        "https://cdn.pixabay.com/photo/2017/09/26/13/31/apple-2788616_150.jpg",
    "previewWidth": 150,
    "previewHeight": 90,
    "webformatURL":
        "https://pixabay.com/get/gf563aeb7fc9f564b1c5e69ecc326f239fceef9fef82cc3cf7d0222ae217b2f703e2d0c9e5c24b1e95f237da792149f3d338fca0010d1f1b891ec63da6c69445d_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 384,
    "largeImageURL":
        "https://pixabay.com/get/g608250e268a6e24cd87030457374ed4d00548defbf756e5aff466ce302e743f3e9caa7412061de6cd2a6abfef520c9c18ffeb211bcb23fad08db559ed78d4424_1280.jpg",
    "imageWidth": 6000,
    "imageHeight": 3601,
    "imageSize": 2758033,
    "views": 165617,
    "downloads": 104078,
    "collections": 472,
    "likes": 539,
    "comments": 44,
    "user_id": 2364555,
    "user": "NoName_13",
    "userImageURL":
        "https://cdn.pixabay.com/user/2022/12/12/07-40-59-226_250x250.jpg",
    "noAiTraining": false,
  },
];
