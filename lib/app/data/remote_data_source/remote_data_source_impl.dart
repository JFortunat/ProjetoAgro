import 'package:farm_management/app/data/remote_data_source/remote_data_source.dart';
import 'package:farm_management/app/domain/entities/land_entity.dart';
import 'package:farm_management/app/domain/entities/order_entity.dart';
import 'package:farm_management/app/domain/entities/culture_entity.dart';
import 'package:farm_management/app/domain/entities/user_entity.dart';

class RemoteDataSourceImpl implements RemoteDataSource {
  @override
  Future<CultureEntity> createCulture(CultureEntity cultureEntity) {
    // TODO: implement createCulture
    throw UnimplementedError();
  }

  @override
  Future<LandEntity> createLand(LandEntity landEntity) {
    // TODO: implement createLand
    throw UnimplementedError();
  }

  @override
  Future createOrder(OrderEntity orderEntity) {
    // TODO: implement createOrder
    throw UnimplementedError();
  }

  @override
  Future<CultureEntity> deleteCulture(String cultureId) {
    // TODO: implement deleteCulture
    throw UnimplementedError();
  }

  @override
  Future<LandEntity> deleteLand(String landId) {
    // TODO: implement deleteLand
    throw UnimplementedError();
  }

  @override
  Future deleteOrder(String orderId) {
    // TODO: implement deleteOrder
    throw UnimplementedError();
  }

  @override
  Future<CultureEntity> editCulture(String cultureId) {
    // TODO: implement editCulture
    throw UnimplementedError();
  }

  @override
  Future<LandEntity> editLand(String landId) {
    // TODO: implement editLand
    throw UnimplementedError();
  }

  @override
  Future<LandEntity> getCulture(String cultureId) {
    // TODO: implement getCulture
    throw UnimplementedError();
  }

  @override
  Future<List<CultureEntity>> getCultures() {
    // TODO: implement getCultures
    throw UnimplementedError();
  }

  @override
  Future<LandEntity> getLand(String landId) {
    // TODO: implement getLand
    throw UnimplementedError();
  }

  @override
  Future<List<LandEntity>> getLands() {
    // TODO: implement getLands
    throw UnimplementedError();
  }

  @override
  Future<List<OrderEntity>> getOrders() {
    // TODO: implement getOrders
    throw UnimplementedError();
  }

  @override
  Future<UserEntity> getUserDetails(String userId) {
    // TODO: implement getUserDetails
    throw UnimplementedError();
  }

  @override
  Future<void> login(String userEmail, String userPassword) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<void> signup(UserEntity userEntity) {
    // TODO: implement signup
    throw UnimplementedError();
  }

  
}
