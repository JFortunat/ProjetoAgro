import 'package:farm_management/app/domain/entities/land_entity.dart';
import 'package:farm_management/app/domain/entities/order_entity.dart';
import 'package:farm_management/app/domain/entities/culture_entity.dart';
import 'package:farm_management/app/domain/entities/user_entity.dart';

abstract class RemoteRepository {
  // Auth
  Future<void> signup(UserEntity userEntity);
  Future<void> login(String userEmail, String userPassword);
  Future<void> logout();
  Future<UserEntity> getUserDetails(String userId);

  // Land
  Future<List<LandEntity>> getLands();
  Future<LandEntity> getLand(String landId);
  Future<LandEntity> createLand(LandEntity landEntity);
  Future<LandEntity> editLand(String landId);
  Future<LandEntity> deleteLand(String landId);

  // Orders
  Future<List<OrderEntity>> getOrders();
  Future createOrder(OrderEntity orderEntity);
  Future deleteOrder(String orderId);

  // Plantation
  Future<List<CultureEntity>> getCultures();
  Future<LandEntity> getCulture(String cultureId);
  Future<CultureEntity> createCulture(CultureEntity cultureEntity);
  Future<CultureEntity> editCulture(String cultureId);
  Future<CultureEntity> deleteCulture(String cultureId);
}
