import 'dart:convert';

import 'package:empresta_s/models/item_class.dart';
import 'package:http/http.dart' as http;

Future<Book> fetchBook() async {
  final response = await http.get(Uri.parse('https://test/books'));

  if (response.statusCode == 200) {
    return Book.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load books');
  }
}
