
import 'package:dartz/dartz.dart';

import '../models/product.dart';

abstract class ProductRepository {

  Future<Either<String, List<Product>>> getAllProducts();
  Future<Either<String, Product>> getProductById(int id);

}