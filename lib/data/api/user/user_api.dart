

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../domain/models/user.dart';
import '../../../domain/repositories/user_repository.dart';


class UserApi extends UserRepository{
  @override
  Future<Either<String, List<User>>> getAllUsers() async {
    try {
      final response = await http.get(Uri.parse('https://fakestoreapi.com/users'));
      if (response.statusCode == 200 ) {
        List<dynamic> data = json.decode(response.body);
        List<User> users = User.fromJsonList(data);
        return Right(users);
      } else {
        return const Left('No hay usuarios para mostrar :c');
      }
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, User>> getUserById(int id) async {
    try {
      final response = await http.get(Uri.parse('https://fakestoreapi.com/users/$id'));
      if (response.statusCode == 200) {
        dynamic data = json.decode(response.body);
        User user = User.fromJson(data);
        return Right(user);
      } else {
        return const Left('No se encontró el usuario :c');
      }
    } catch (e) {
      return Left(e.toString());
    }
  }
}