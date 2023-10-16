
// ignore_for_file: public_member_api_docs, sort_constructors_first
class OrderEntity {
  String orderId;
  String userId;
  String professionalId;
  DateTime orderDate;
  bool orderDone;
  
  OrderEntity({
    required this.orderId,
    required this.userId,
    required this.professionalId,
    required this.orderDate,
    required this.orderDone,
  });

 
}
