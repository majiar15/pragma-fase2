

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../domain/models/product.dart';
import '../../../domain/repositories/product_repository.dart';


class ProductApi extends ProductRepository{
  @override
  Future<Either<String, List<Product>>> getAllProducts() async {
    try {
      final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
      if (response.statusCode == 200 ) {
        List<dynamic> data = json.decode(response.body);
        List<Product> products = Product.fromJsonList(data);
        return Right(products);
      } else {
        return const Left('No hay productos para mostrar :c');
      }
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, Product>> getProductById(int id) async {
    try {
      final response = await http.get(Uri.parse('https://fakestoreapi.com/products/$id'));
      if (response.statusCode == 200) {
        dynamic data = json.decode(response.body);
        Product products = Product.fromJson(data);
        return Right(products);
      } else {
        return const Left('No se encontró el producto :c');
      }
    } catch (e) {
      return Left(e.toString());
    }
  }

}