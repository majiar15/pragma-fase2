import 'package:dartz/dartz.dart';

import '../../models/user.dart';
import '../../repositories/user_repository.dart';

class GetOneUserUseCase {
  final UserRepository userRepository;

  GetOneUserUseCase(this.userRepository);

  Future<Either<String, User>> call(int id) => userRepository.getUserById(id);

}
