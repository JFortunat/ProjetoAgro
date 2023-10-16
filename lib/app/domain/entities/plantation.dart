// ignore_for_file: public_member_api_docs, sort_constructors_first
class PlantationEntity {
  String plantationId;
  String cultureName;
  String cultureDiscription;
  DateTime plantationStart;
  DateTime estimatedTime;

  PlantationEntity({
    required this.plantationId,
    required this.cultureName,
    required this.cultureDiscription,
    required this.plantationStart,
    required this.estimatedTime,
  });
}
