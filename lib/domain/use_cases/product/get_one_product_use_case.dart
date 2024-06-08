import 'package:dartz/dartz.dart';

import '../../models/product.dart';
import '../../repositories/product_repository.dart';

class GetOneProductUseCase {
  final ProductRepository productRepository;

  GetOneProductUseCase(this.productRepository);

  Future<Either<String, Product>> call(int id) => productRepository.getProductById(id);

}
