import '../../models/product.dart';
import '../../repositories/product_repository.dart';

class GetOneProductUseCase {
  final ProductRepository productRepository;

  GetOneProductUseCase(this.productRepository);

  Future<Product> getAllProducts(int id) => productRepository.getProductById(id);

}
