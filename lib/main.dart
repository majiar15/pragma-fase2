
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'domain/models/product.dart';
import 'domain/models/user.dart';
import 'domain/use_cases/product/get_all_products_use_case.dart';
import 'domain/use_cases/product/get_one_product_use_case.dart';
import 'domain/use_cases/user/get_all_users_use_case.dart';
import 'domain/use_cases/user/get_one_user_use_case.dart';
import 'injector.dart';

void main() async {
  final Injector injector = Injector();

  GetAllProductsUseCase getAllProductsUseCase = injector.getAllProductsUseCase;
  GetOneProductUseCase getOneProductUseCase = injector.getOneProductUseCase;

  GetAllUsersUseCase getAllUsersUseCase = injector.getAllUsersUseCase;
  GetOneUserUseCase getOneUserUseCase = injector.getOneUserUseCase;


  if (kDebugMode) print("====================== 1 - obtener todos los productos =======================");

  Either<String, List<Product>> getAllProductsResult = await getAllProductsUseCase();
  getAllProductsResult.fold(
    (failure) => print('Error Capturado: $failure'),
    (products) {
      if (kDebugMode) print('Productos:');
      for (var product in products) {
        if (kDebugMode) print('\n Nombre: ${product.title} \n Precio: ${product.price} \n Categoría: ${product.category}');
      }
    },
  );

  if (kDebugMode) print("====================== 2 - obtener un producto =======================");

  Either<String, Product> getOneProductResult = await getOneProductUseCase(10);
  getOneProductResult.fold(
    (failure) => print('Error Capturado: $failure'),
    (product) {
      if (kDebugMode) {
        print('\n Nombre: ${product.title} \n Precio: ${product.price} \n Categoría: ${product.category} \n ');
      }
    },
  );


  if (kDebugMode) print("====================== 3 - obtener todos los usuarios =======================");

  Either<String, List<User>> usersResult = await getAllUsersUseCase();
  usersResult.fold(
    (failure) => print('Error Capturado: $failure'),
    (users) {
      if (kDebugMode) print('Usuarios:');
      for (var user in users) {
        if (kDebugMode) print('\n Nombre: ${user.name.firstname} ${user.name.lastname} \n Email: ${user.email} \n UserName: ${user.username}', );
      }
    },
  );

  if (kDebugMode) print("====================== 4 - obtener un usuario =======================");

  Either<String, User> productsResult = await getOneUserUseCase(5);
  productsResult.fold(
    (failure) => print('Error Capturado: $failure'),
    (user) {
      if (kDebugMode) {
        print('\n Nombre: ${user.name.firstname} ${user.name.lastname} \n Email: ${user.email}\n UserName: ${user.username}\n Teléfono: ${user.phone}');
      }
    },
  );
}

