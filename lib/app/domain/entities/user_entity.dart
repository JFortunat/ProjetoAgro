
// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserEntity {
  String userId;
  String userName;
  String userEmail;
  String userType;
  String userCel;
  String? userCrea;
  
  UserEntity({
    required this.userId,
    required this.userName,
    required this.userEmail,
    required this.userType,
    required this.userCel,
    this.userCrea,
  });

  
}
