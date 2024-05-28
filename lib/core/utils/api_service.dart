import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  String baseUrl = 'https://www.googleapis.com/books/v1/';
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    http.Response response = await http.get(Uri.parse('$baseUrl$endpoint'));
    var data = jsonDecode(response.body);

    return data;
  }
}
