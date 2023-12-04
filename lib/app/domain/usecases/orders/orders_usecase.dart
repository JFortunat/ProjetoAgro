// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:farm_management/app/data/remote_data_source/remote_data_source.dart';
import 'package:farm_management/app/domain/entities/order_entity.dart';

class OrdersUseCase {
  RemoteDataSource remoteDataSource;
  OrdersUseCase(
    this.remoteDataSource,
  );

  Future createOrderUseCase(OrderEntity orderEntity) async {
    return await remoteDataSource.createOrder(orderEntity);
  }

  Future getOrdersUseCase() async {
    return await remoteDataSource.getOrders();
  }

  Future deleteOrderUseCase(String orderId) async {
    return await remoteDataSource.deleteOrder(orderId);
  }
}
