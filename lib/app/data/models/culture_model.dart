import 'package:farm_management/app/domain/entities/culture_entity.dart';
import 'dart:convert';

class CultureModel extends CultureEntity {
  CultureModel(
      {required super.cultureId,
      required super.landId,
      required super.cultureName,
      required super.cultureDiscription,
      required super.cultureStart,
      required super.estimatedTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cultureId': cultureId,
      'landId': landId,
      'cultureName': cultureName,
      'cultureDiscription': cultureDiscription,
      'plantationStart': cultureStart.millisecondsSinceEpoch,
      'estimatedTime': estimatedTime.millisecondsSinceEpoch,
    };
  }

  factory CultureModel.fromMap(Map<String, dynamic> map) {
    return CultureModel(
      cultureId: map['cultureId'] as String,
      landId: map['landId'] as String,
      cultureName: map['cultureName'] as String,
      cultureDiscription: map['cultureDiscription'] as String,
      cultureStart:
          DateTime.fromMillisecondsSinceEpoch(map['cultureStart'] as int),
      estimatedTime:
          DateTime.fromMillisecondsSinceEpoch(map['estimatedTime'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory CultureModel.fromJson(String source) =>
      CultureModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
