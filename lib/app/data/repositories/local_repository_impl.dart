// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:farm_management/app/data/local_data_source/local_data_source.dart';
import 'package:farm_management/app/domain/entities/land_entity.dart';
import 'package:farm_management/app/domain/entities/order_entity.dart';
import 'package:farm_management/app/domain/entities/plantation.dart';
import 'package:farm_management/app/domain/entities/user_entity.dart';
import 'package:farm_management/app/domain/repositories/local_repository.dart';

class LocalRepositoryImpl implements LocalRepository {
  LocalDataSource localDataSource;

  LocalRepositoryImpl({
    required this.localDataSource,
  });

  // Auth
  @override
  Future<UserEntity> getUserDetails(String userId) async {
    return await localDataSource.getUserDetails(userId);
  }

  @override
  Future<void> signup(UserEntity userEntity) async {
    return await localDataSource.signup(userEntity);
  }

  @override
  Future<void> login(String userEmail, String userPassword) async {
    return await localDataSource.login(userEmail, userPassword);
  }

  @override
  Future<void> logout() async {
    return await localDataSource.logout();
  }

  // Land

  @override
  Future<LandEntity> getLand(String landId) async {
    return await localDataSource.getLand(landId);
  }

  @override
  Future<LandEntity> createLand(LandEntity landEntity) async {
    return await localDataSource.createLand(landEntity);
  }

  @override
  Future<LandEntity> editLand(String landId) async {
    return await localDataSource.editLand(landId);
  }

  @override
  Future<LandEntity> deleteLand(String landId) async {
    return await localDataSource.deleteLand(landId);
  }

  // Order

  @override
  Future<List<OrderEntity>> getOrders() async {
    return await localDataSource.getOrders();
  }

  @override
  Future createOrder(OrderEntity orderEntity) async {
    return await localDataSource.createOrder(orderEntity);
  }

  @override
  Future deleteOrder(String orderId) async {
    return await localDataSource.deleteOrder(orderId);
  }

  @override
  Future requestProfessional(OrderEntity orderEntity, String landId) async {
    return await localDataSource.requestProfessional(orderEntity, landId);
  }

  // Plantation

  @override
  Future<LandEntity> getPlantation(String plantationId) async {
    return await localDataSource.getPlantation(plantationId);
  }

  @override
  Future<PlantationEntity> createPlantation(
      PlantationEntity plantationEntity) async {
    return await localDataSource.createPlantation(plantationEntity);
  }

  @override
  Future<PlantationEntity> editPlantation(String plantationId) {
    return localDataSource.editPlantation(plantationId);
  }

  @override
  Future<PlantationEntity> deletePlantation(String plantationId) async {
    return await localDataSource.deletePlantation(plantationId);
  }
}
