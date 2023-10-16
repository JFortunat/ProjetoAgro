import 'package:farm_management/app/domain/entities/land_entity.dart';
import 'package:farm_management/app/domain/entities/order_entity.dart';
import 'package:farm_management/app/domain/entities/plantation.dart';
import 'package:farm_management/app/domain/entities/user_entity.dart';
import 'package:sqflite/sqflite.dart';

abstract class LocalDataSource {
  // Auth
  Future<void> signup(UserEntity userEntity);
  Future<void> login(String userEmail, String userPassword);
  Future<void> logout();
  Future<UserEntity> getUserDetails(String userId);

  // DataBase
  Future<String> get getPath;
  Future<Database> get database;
  Future<Database> initializeDatabase();
  Future<void> createDataBases(Database database, int version);

  // Land
  Future<LandEntity> getLand(String landId);
  Future<LandEntity> createLand(LandEntity landEntity);
  Future<LandEntity> editLand(String landId);
  Future<LandEntity> deleteLand(String landId);

  // Orders
  Future<List<OrderEntity>> getOrders();
  Future createOrder(OrderEntity orderEntity);
  Future requestProfessional(OrderEntity orderEntity, String landId);
  Future deleteOrder(String orderId);
  
  // Plantation
  Future<LandEntity> getPlantation(String plantationId);
  Future<PlantationEntity> createPlantation(PlantationEntity plantationEntity);
  Future<PlantationEntity> editPlantation(String plantationId);
  Future<PlantationEntity> deletePlantation(String plantationId);

}
