import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_search/model/photo.dart';

class PixabayApi {
  // static final
  final baseUrl = 'https://pixabay.com/api/';
  final key = '';

  Future<List<Photo>> fetch(String query) async {
    final response = await http.get(
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
