import 'package:farm_management/app/domain/entities/land_entity.dart';
import 'dart:convert';

class LandModel extends LandEntity {
  LandModel(
      {required super.landId,
      required super.landSize,
      required super.lat,
      required super.lon});

      Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'landId': landId,
      'landSize': landSize,
      'lat': lat,
      'lon': lon,
    };
  }

  factory LandModel.fromMap(Map<String, dynamic> map) {
    return LandModel(
      landId: map['landId'] as String,
      landSize: map['landSize'] as double,
      lat: map['lat'] as double,
      lon: map['lon'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory LandModel.fromJson(String source) => LandModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
