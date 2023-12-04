// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:farm_management/app/data/remote_data_source/remote_data_source.dart';
import 'package:farm_management/app/domain/entities/land_entity.dart';

class LandsUseCase {
  RemoteDataSource remoteDataSource;

  LandsUseCase(
    this.remoteDataSource,
  );

  Future getLandsUseCase() async {
    return await remoteDataSource.getLands();
  }

  Future getLandUseCase(String landId) async {
    return await remoteDataSource.getLand(landId);
  }

  Future createLandUseCase(LandEntity landEntity) async {
    return await remoteDataSource.createLand(landEntity);
  }

  Future editLandUseCase(String landId) async {
    return await remoteDataSource.editLand(landId);
  }

  Future deleteLandUseCase(String landId) async {
    return await remoteDataSource.deleteLand(landId);
  }
}
