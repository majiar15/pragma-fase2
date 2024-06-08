import 'data/api/product/product_api.dart';
import 'data/api/user/user_api.dart';
import 'domain/repositories/product_repository.dart';
import 'domain/repositories/user_repository.dart';
import 'domain/use_cases/product/get_all_products_use_case.dart';
import 'domain/use_cases/product/get_one_product_use_case.dart';
import 'domain/use_cases/user/get_all_users_use_case.dart';
import 'domain/use_cases/user/get_one_user_use_case.dart';

class Injector {

  late GetAllProductsUseCase getAllProductsUseCase;
  late GetOneProductUseCase getOneProductUseCase;
  late GetAllUsersUseCase getAllUsersUseCase;
  late GetOneUserUseCase getOneUserUseCase;

  Injector(){

    ProductRepository productRepository = ProductApi();
    getAllProductsUseCase = GetAllProductsUseCase(productRepository);
    getOneProductUseCase = GetOneProductUseCase(productRepository);


    UserRepository userRepository = UserApi();
    getAllUsersUseCase = GetAllUsersUseCase(userRepository);
    getOneUserUseCase = GetOneUserUseCase(userRepository);

  }

}