// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:farm_management/app/domain/repositories/remote_repository.dart';

class LoginUsecase {
  RemoteRepository remoteRepository;
  LoginUsecase(
    this.remoteRepository,
  );

  Future loginUseCase(String userEmail, String userPassword) async {
    return await remoteRepository.login(userEmail, userPassword);
  }
}
