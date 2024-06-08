import '../models/user.dart';

abstract class UserRepository {

  Future<List<User>> getAllUsers();
  Future<User> getUser();
}