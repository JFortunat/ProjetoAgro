// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:farm_management/app/data/remote_data_source/remote_data_source.dart';

class LogoutUseCase {
  RemoteDataSource remoteDataSource;
  LogoutUseCase(
     this.remoteDataSource,
  );

  Future logoutUseCase() async {
    return await remoteDataSource.logout();
  }
}
