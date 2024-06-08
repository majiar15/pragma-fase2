import 'package:dartz/dartz.dart';

import '../models/user.dart';

abstract class UserRepository {

  Future<Either<String, List<User>>> getAllUsers();
  Future<Either<String, User>> getUserById(int id);

}
