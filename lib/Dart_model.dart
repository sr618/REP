import 'dart:convert';

class Product {
  final String name;
  final String avatar; // Image URL
  final String description;
  final double price;
  final String Categories;

  Product({
    required this.name,
    required this.avatar,
    required this.description,
    required this.price,
    required this.Categories,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],
      avatar: json['avatar'],
      description: json['Description'],
      price: double.parse(json['Price']),
      Categories: json['Categories'],
    );
  }
}


// class ProductData {
//   static List<Product> getProducts() {
//     final String jsonString = '''
//     {
//       "categories": ["All", "Electronics", "Clothing", "Home"],
//       "products": [
//         {"name": "Laptop", "price": 999.99, "category": "Electronics", "description": "High-performance laptop"},
//         {"name": "T-Shirt", "price": 19.99, "category": "Clothing", "description": "Comfortable cotton t-shirt"},
//         {"name": "Sofa", "price": 499.99, "category": "Home", "description": "Comfortable sofa for your living room"}
//       ]
//     }
//     ''';
//     final Map<String, dynamic> jsonData = json.decode(jsonString);
//     final List<dynamic> productsJson = jsonData['products'];
//     final List<Product> products =
//         productsJson.map((json) => Product.fromJson(json)).toList();
//     return products;
//   }

//   static List<String> getCategories() {
//     final String jsonString = '''
//     {
//       "categories": ["All", "Electronics", "Clothing", "Home"]
//     }
//     ''';
//     final Map<String, dynamic> jsonData = json.decode(jsonString);
//     return List<String>.from(jsonData['categories']);
//   }
// }
