import 'package:dartz/dartz.dart';

import '../../models/product.dart';
import '../../repositories/product_repository.dart';

class GetAllProductsUseCase {
  final ProductRepository productRepository;

  GetAllProductsUseCase(this.productRepository);

  Future<Either<String, List<Product>>> call() => productRepository.getAllProducts();

}
