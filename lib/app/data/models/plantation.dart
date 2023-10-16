import 'package:farm_management/app/domain/entities/plantation.dart';
import 'dart:convert';

class PlantationModel extends PlantationEntity {
  PlantationModel(
      {required super.plantationId,
      required super.cultureName,
      required super.cultureDiscription,
      required super.plantationStart,
      required super.estimatedTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plantationId': plantationId,
      'cultureName': cultureName,
      'cultureDiscription': cultureDiscription,
      'plantationStart': plantationStart.millisecondsSinceEpoch,
      'estimatedTime': estimatedTime.millisecondsSinceEpoch,
    };
  }

  factory PlantationModel.fromMap(Map<String, dynamic> map) {
    return PlantationModel(
      plantationId: map['plantationId'] as String,
      cultureName: map['cultureName'] as String,
      cultureDiscription: map['cultureDiscription'] as String,
      plantationStart:
          DateTime.fromMillisecondsSinceEpoch(map['plantationStart'] as int),
      estimatedTime:
          DateTime.fromMillisecondsSinceEpoch(map['estimatedTime'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory PlantationModel.fromJson(String source) =>
      PlantationModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
