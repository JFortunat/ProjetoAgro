// ignore_for_file: public_member_api_docs, sort_constructors_first
class CultureEntity {
  String cultureId;
  String landId;
  String cultureName;
  String cultureDiscription;
  DateTime cultureStart;
  DateTime estimatedTime;

  CultureEntity({
    required this.cultureId,
    required this.landId,
    required this.cultureName,
    required this.cultureDiscription,
    required this.cultureStart,
    required this.estimatedTime,
  });
}
