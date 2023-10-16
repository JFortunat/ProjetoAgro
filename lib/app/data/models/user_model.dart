import 'package:farm_management/app/domain/entities/user_entity.dart';
import 'dart:convert';

class UserModel extends UserEntity {
  UserModel(
      {required super.userId,
      required super.userName,
      required super.userType,
      required super.userCel,
      required super.userCrea});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'userName': userName,
      'userType': userType,
      'userCel': userCel,
      'userCrea': userCrea,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      userId: map['userId'] as String,
      userName: map['userName'] as String,
      userType: map['userType'] as String,
      userCel: map['userCel'] as String,
      userCrea: map['userCrea'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
