// // ignore_for_file: avoid_print

// import 'package:http/http.dart' as http;

// import '../../../model/chat.dart';

// class ApiProvider {
//   Future<Products> getProducts() async {
//     const url = 'https://fakestoreapi.com/products';
//     final request = await http.get(Uri.parse(url));
//     // var data = jsonDecode(respone.body.toStri ng());
//     if (request.statusCode == 200) {
//       final body = request.body;
//       final products = productsFromJson(body);
//       print(products);
//       return products;
//     } else {
//       final body = request.body;
//       final error = productsFromJson(body);
//       print(error);
//       return error;
//     }
//   }
// }
