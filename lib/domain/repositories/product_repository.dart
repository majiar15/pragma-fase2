
import '../models/product.dart';

abstract class ProductRepository {

  Future<List<Product>> getAllProducts();
  Future<Product> getProduct();

}