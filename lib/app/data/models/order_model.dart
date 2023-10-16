import 'package:farm_management/app/domain/entities/order_entity.dart';
import 'dart:convert';

class OrderModel extends OrderEntity {
  OrderModel(
      {required super.orderId,
      required super.userId,
      required super.professionalId,
      required super.orderDate,
      required super.orderDone});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'orderId': orderId,
      'userId': userId,
      'professionalId': professionalId,
      'orderDate': orderDate.millisecondsSinceEpoch,
      'orderDone': orderDone,
    };
  }

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      orderId: map['orderId'] as String,
      userId: map['userId'] as String,
      professionalId: map['professionalId'] as String,
      orderDate: DateTime.fromMillisecondsSinceEpoch(map['orderDate'] as int),
      orderDone: map['orderDone'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderModel.fromJson(String source) =>
      OrderModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
