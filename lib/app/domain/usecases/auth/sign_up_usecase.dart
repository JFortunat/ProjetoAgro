// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:farm_management/app/data/remote_data_source/remote_data_source.dart';
import 'package:farm_management/app/domain/entities/user_entity.dart';

class SignUpUseCase {
  RemoteDataSource remoteDataSource;
  SignUpUseCase(
    this.remoteDataSource,
  );

  Future signUpUseCase(UserEntity userEntity) async {
    return await remoteDataSource.signup(userEntity);
  }
}
