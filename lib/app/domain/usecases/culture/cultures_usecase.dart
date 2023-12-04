// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:farm_management/app/data/remote_data_source/remote_data_source.dart';
import 'package:farm_management/app/domain/entities/culture_entity.dart';

class CulturesUseCase {
  RemoteDataSource remoteDataSource;

  CulturesUseCase(
    this.remoteDataSource,
  );

  Future createCultureUseCase(CultureEntity cultureEntity) async {
    return await remoteDataSource.createCulture(cultureEntity);
  }

  Future getCulturesUseCase() async {
    return await remoteDataSource.getCultures();
  }

  Future getCUltureUseCase(String cultureId) async {
    return await remoteDataSource.getCulture(cultureId);
  }

  Future editCultureUseCase(String cultureId) async {
    return await remoteDataSource.editCulture(cultureId);
  }

  Future deleteCultureUseCase(String cultureId) async {
    return await remoteDataSource.deleteCulture(cultureId);
  }
}
