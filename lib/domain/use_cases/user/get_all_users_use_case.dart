import 'package:dartz/dartz.dart';

import '../../models/user.dart';
import '../../repositories/user_repository.dart';

class GetAllUsersUseCase {
  final UserRepository userRepository;

  GetAllUsersUseCase(this.userRepository);

  Future<Either<String, List<User>>> call() => userRepository.getAllUsers();

}
