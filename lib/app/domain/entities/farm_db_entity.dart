// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:sqflite/sqflite.dart';

abstract class FarmDBEntity {
  String usersTable;
  String landsTable;
  String plantationsTable;
  String ordersTable;

  FarmDBEntity({
    required this.usersTable,
    required this.landsTable,
    required this.plantationsTable,
    required this.ordersTable,
  });

  Future<void> createUsersDB(Database database);
  Future<void> createLandsDB(Database database);
  Future<void> createOrdersDB(Database database);
  Future<void> createPlantationsDB(Database database);
  
}
