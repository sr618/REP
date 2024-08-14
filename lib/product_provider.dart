import 'dart:convert';
import 'package:http/http.dart' as http;
import 'Dart_model.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _products = [];
  List<Product> _filteredProducts = [];
  List<String> _categories = []; // Add categories if available

  List<Product> get products => _filteredProducts;

  Future<void> fetchProducts() async {
    final response = await http
        .get(Uri.parse('https://6413ec10a68505ea733e391f.mockapi.io/Products'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      _products = data.map((json) => Product.fromJson(json)).toList();
      _filteredProducts = _products;
      notifyListeners();
    } else {
      throw Exception('Failed to load products');
    }
  }

  void filterByCategory(String category) {
    // Implement category filtering if needed
    _filteredProducts = category == 'All'
        ? _products
        : _products.where((product) => product.Categories == category).toList();
    notifyListeners();
  }

  List<String> get categories => _categories;
}
