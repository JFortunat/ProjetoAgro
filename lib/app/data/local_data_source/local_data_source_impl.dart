import 'package:farm_management/app/data/local_data_source/local_data_source.dart';
import 'package:farm_management/app/data/models/farm_db_model.dart';
import 'package:farm_management/app/domain/entities/land_entity.dart';
import 'package:farm_management/app/domain/entities/order_entity.dart';
import 'package:farm_management/app/domain/entities/plantation.dart';
import 'package:farm_management/app/domain/entities/user_entity.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class LocalDataSourceImpl implements LocalDataSource {
  Database? _database;
  @override
  Future<String> get getPath async {
    const String name = "farm.db";
    final path = await getDatabasesPath();
    return join(path, name);
  }

  @override
  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await initializeDatabase();
    return _database!;
  }

  @override
  Future<Database> initializeDatabase() async {
    final path = await getPath;
    var database = await openDatabase(path,
        version: 1, onCreate: createDataBases, singleInstance: true);
    return database;
  }

  @override
  Future<void> createDataBases(Database database, int version) async {
    await FarmDBModel().createUsersDB(database);
    await FarmDBModel().createLandsDB(database);
    await FarmDBModel().createOrdersDB(database);
    await FarmDBModel().createPlantationsDB(database);
  }
  

  @override
  Future<LandEntity> createLand(LandEntity landEntity) {
    // TODO: implement createLand
    throw UnimplementedError();
  }

  @override
  Future<PlantationEntity> createPlantation(PlantationEntity plantationEntity) {
    // TODO: implement createPlantation
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
  Future<PlantationEntity> deletePlantation(String plantationId) {
    // TODO: implement deletePlantation
    throw UnimplementedError();
  }

  @override
  Future<LandEntity> editLand(String landId) {
    // TODO: implement editLand
    throw UnimplementedError();
  }

  @override
  Future<PlantationEntity> editPlantation(String plantationId) {
    // TODO: implement editPlantation
    throw UnimplementedError();
  }

  @override
  Future<LandEntity> getLand(String landId) {
    // TODO: implement getLand
    throw UnimplementedError();
  }

  @override
  Future<List<OrderEntity>> getOrders() {
    // TODO: implement getOrders
    throw UnimplementedError();
  }

  @override
  Future<LandEntity> getPlantation(String plantationId) {
    // TODO: implement getPlantation
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
  Future requestProfessional(OrderEntity orderEntity, String landId) {
    // TODO: implement requestProfessional
    throw UnimplementedError();
  }

  @override
  Future<void> signup(UserEntity userEntity) {
    // TODO: implement signup
    throw UnimplementedError();
  }
  
  @override
  Future createOrder(OrderEntity orderEntity) {
    // TODO: implement createOrder
    throw UnimplementedError();
  }
  
  @override
  Future<UserEntity> getUserDetails(String userId) {
    // TODO: implement getUserDetails
    throw UnimplementedError();
  }
}
