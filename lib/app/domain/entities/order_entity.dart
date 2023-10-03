// ignore_for_file: public_member_api_docs, sort_constructors_first
class OrderEntity {
  String orderId;
  DateTime orderDate;
  bool orderDone;
  
  OrderEntity({
    required this.orderId,
    required this.orderDate,
    required this.orderDone,
  });
}
