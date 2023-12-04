// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:farm_management/app/data/remote_data_source/remote_data_source.dart';
import 'package:farm_management/app/domain/entities/land_entity.dart';
import 'package:farm_management/app/domain/entities/order_entity.dart';
import 'package:farm_management/app/domain/entities/culture_entity.dart';
import 'package:farm_management/app/domain/entities/user_entity.dart';
import 'package:farm_management/app/domain/repositories/remote_repository.dart';

class RemoteRepositoryImpl implements RemoteRepository {
  RemoteDataSource remoteDataSource;

  RemoteRepositoryImpl(
    this.remoteDataSource,
  );

  // Auth
  @override
  Future<UserEntity> getUserDetails(String userId) async {
    return await remoteDataSource.getUserDetails(userId);
  }

  @override
  Future<void> signup(UserEntity userEntity) async {
    return await remoteDataSource.signup(userEntity);
  }

  @override
  Future<void> login(String userEmail, String userPassword) async {
    return await remoteDataSource.login(userEmail, userPassword);
  }

  @override
  Future<void> logout() async {
    return await remoteDataSource.logout();
  }

  // Land

  @override
  Future<LandEntity> getLand(String landId) async {
    return await remoteDataSource.getLand(landId);
  }

  @override
  Future<LandEntity> createLand(LandEntity landEntity) async {
    return await remoteDataSource.createLand(landEntity);
  }

  @override
  Future<LandEntity> editLand(String landId) async {
    return await remoteDataSource.editLand(landId);
  }

  @override
  Future<LandEntity> deleteLand(String landId) async {
    return await remoteDataSource.deleteLand(landId);
  }

  // Order

  @override
  Future<List<OrderEntity>> getOrders() async {
    return await remoteDataSource.getOrders();
  }

  @override
  Future createOrder(OrderEntity orderEntity) async {
    return await remoteDataSource.createOrder(orderEntity);
  }

  @override
  Future deleteOrder(String orderId) async {
    return await remoteDataSource.deleteOrder(orderId);
  }

  // Plantation

  @override
  Future<LandEntity> getCulture(String cultureId) async {
    return await remoteDataSource.getCulture(cultureId);
  }

  @override
  Future<CultureEntity> createCulture(
      CultureEntity cultureEntity) async {
    return await remoteDataSource.createCulture(cultureEntity);
  }

  @override
  Future<CultureEntity> editCulture(String cultureId) {
    return remoteDataSource.editCulture(cultureId);
  }

  @override
  Future<CultureEntity> deleteCulture(String cultureId) async {
    return await remoteDataSource.deleteCulture(cultureId);
  }
  
  @override
  Future<List<CultureEntity>> getCultures() async {
    return await remoteDataSource.getCultures();
  }
  
  @override
  Future<List<LandEntity>> getLands() async {
    return await remoteDataSource.getLands();
   
  }
}
