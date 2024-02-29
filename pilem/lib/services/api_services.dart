import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String apiKey = 'cb93279f1efab80b7c9e8545756de504';

  Future<List<Map<String, dynamic>>> getAllMovies() async {
    final response =
        await http.get(Uri.parse("$baseUrl/movie/now_playing?api_key=$apiKey"));
    final data = jsonDecode(response.body);
    return List<Map<String, dynamic>>.from(data['results']);
  }

  Future<List<Map<String, dynamic>>> getTrending() async {
    final response =
        await http.get(Uri.parse("$baseUrl/movie/week?api_key=$apiKey"));
    final data = jsonDecode(response.body);
    return List<Map<String, dynamic>>.from(data['results']);
  }

  Future<List<Map<String, dynamic>>> getPopularMovies() async {
    final response =
        await http.get(Uri.parse("$baseUrl/movie/now_playing?api_key=$apiKey"));
    final data = jsonDecode(response.body);
    return List<Map<String, dynamic>>.from(data['results']);
  }
}
