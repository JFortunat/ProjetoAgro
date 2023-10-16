import 'package:farm_management/app/domain/entities/farm_db_entity.dart';
import 'package:sqflite/sqflite.dart';

class FarmDBModel extends FarmDBEntity {
  FarmDBModel(
      {super.usersTable = 'users',
      super.landsTable = 'lands',
      super.plantationsTable = 'plantations',
      super.ordersTable = 'orders'});

  @override
  Future<void> createUsersDB(Database database) async {
    await database.execute(
        """CREATE TABLE IF NOT EXISTS $usersTable (
        "user_id"  INTEGER NOT NULL,
        "user_name" TEXT NOT NULL, 
        "user_type" TEXT NOT NULL, 
        "user_cel" TEXT NOT NULL,
        "user_crea",
        PRIMARY KEY("user_id" AUTOINCREMENT)
        );""");
  }

  @override
  Future<void> createLandsDB(Database database) async {
   await database.execute(
        """CREATE TABLE IF NOT EXISTS $landsTable (
        "user_id" INTEGER NOT NULL,
        "land_size" DOUBLE, 
        "lat" DOUBLE, 
        "lon" DOUBLE,
        PRIMARY KEY("user_id" AUTOINCREMENT)
        );""");
  }

  @override
  Future<void> createOrdersDB(Database database) async {
    await database.execute(
        """CREATE TABLE IF NOT EXISTS $ordersTable (
        "order_id"  INTEGER NOT NULL,
        "user_id" INTEGER NOT NULL, 
        "professional_id" INTEGER NOT NULL, 
        "order_date" DATETIME,
        "order_date" DATETIME,
        PRIMARY KEY("order_id" AUTOINCREMENT)
        );""");
  }

  @override
  Future<void> createPlantationsDB(Database database) async {
    await database.execute(
        """CREATE TABLE IF NOT EXISTS $plantationsTable (
        "plantation_id"  INTEGER NOT NULL,
        "culture_name" TEXT NOT NULL, 
        "culture_discription" TEXT NOT NULL, 
        "plantation_start" DATETIME,
        "estimated_time" DATETIME,
        PRIMARY KEY("plantation_id" AUTOINCREMENT)
        );""");
  }
}
