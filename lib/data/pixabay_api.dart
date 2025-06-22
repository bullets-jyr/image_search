import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_search/data/photo_api_respository.dart';
import 'package:image_search/model/photo.dart';

class PixabayApi implements PhotoApiRepository{
  // static final
  static const baseUrl = 'https://pixabay.com/api/';
  static const key = '50974536-699d7d66adbcf696ebeaba640';

  @override
  Future<List<Photo>> fetch(String query, {http.Client? client}) async {
    client ??= http.Client();

    final response = await client.get(
      Uri.parse(
        '$baseUrl?key=$key&q=$query&image_type=photo',
      ),
    );

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    // Map<String, dynamic>
    Iterable hits = jsonResponse['hits'];
    // 객체
    return hits.map((e) => Photo.fromJson(e)).toList();
  }
}
