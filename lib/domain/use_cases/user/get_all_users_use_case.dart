import '../../models/user.dart';
import '../../repositories/user_repository.dart';

class GetAllUsersUseCase {
  final UserRepository userRepository;

  GetAllUsersUseCase(this.userRepository);

  Future<List<User>> getAllUsers() => userRepository.getAllUsers();

}
