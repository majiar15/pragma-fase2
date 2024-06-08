import '../../models/user.dart';
import '../../repositories/user_repository.dart';

class GetOneUserUseCase {
  final UserRepository userRepository;

  GetOneUserUseCase(this.userRepository);

  Future<User> getAllUsers(int id) => userRepository.getUserById(id);

}
