import '../../models/product.dart';
import '../../repositories/product_repository.dart';

class GetAllProductsUseCase {
  final ProductRepository productRepository;

  GetAllProductsUseCase(this.productRepository);

  Future<List<Product>> getAllProducts() => productRepository.getAllProducts();

}
