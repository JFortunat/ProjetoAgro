// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lands_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LandsController on _LandsControllerBase, Store {
  late final _$cultureNameAtom =
      Atom(name: '_LandsControllerBase.cultureName', context: context);

  @override
  String get cultureName {
    _$cultureNameAtom.reportRead();
    return super.cultureName;
  }

  @override
  set cultureName(String value) {
    _$cultureNameAtom.reportWrite(value, super.cultureName, () {
      super.cultureName = value;
    });
  }

  late final _$cultureDiscriptionAtom =
      Atom(name: '_LandsControllerBase.cultureDiscription', context: context);

  @override
  String get cultureDiscription {
    _$cultureDiscriptionAtom.reportRead();
    return super.cultureDiscription;
  }

  @override
  set cultureDiscription(String value) {
    _$cultureDiscriptionAtom.reportWrite(value, super.cultureDiscription, () {
      super.cultureDiscription = value;
    });
  }

  late final _$plantationStartAtom =
      Atom(name: '_LandsControllerBase.plantationStart', context: context);

  @override
  DateTime get plantationStart {
    _$plantationStartAtom.reportRead();
    return super.plantationStart;
  }

  @override
  set plantationStart(DateTime value) {
    _$plantationStartAtom.reportWrite(value, super.plantationStart, () {
      super.plantationStart = value;
    });
  }

  late final _$estimatedTimeAtom =
      Atom(name: '_LandsControllerBase.estimatedTime', context: context);

  @override
  DateTime get estimatedTime {
    _$estimatedTimeAtom.reportRead();
    return super.estimatedTime;
  }

  @override
  set estimatedTime(DateTime value) {
    _$estimatedTimeAtom.reportWrite(value, super.estimatedTime, () {
      super.estimatedTime = value;
    });
  }

  late final _$landSizeAtom =
      Atom(name: '_LandsControllerBase.landSize', context: context);

  @override
  double get landSize {
    _$landSizeAtom.reportRead();
    return super.landSize;
  }

  @override
  set landSize(double value) {
    _$landSizeAtom.reportWrite(value, super.landSize, () {
      super.landSize = value;
    });
  }

  late final _$latAtom =
      Atom(name: '_LandsControllerBase.lat', context: context);

  @override
  double get lat {
    _$latAtom.reportRead();
    return super.lat;
  }

  @override
  set lat(double value) {
    _$latAtom.reportWrite(value, super.lat, () {
      super.lat = value;
    });
  }

  late final _$lonAtom =
      Atom(name: '_LandsControllerBase.lon', context: context);

  @override
  double get lon {
    _$lonAtom.reportRead();
    return super.lon;
  }

  @override
  set lon(double value) {
    _$lonAtom.reportWrite(value, super.lon, () {
      super.lon = value;
    });
  }

  @override
  String toString() {
    return '''
cultureName: ${cultureName},
cultureDiscription: ${cultureDiscription},
plantationStart: ${plantationStart},
estimatedTime: ${estimatedTime},
landSize: ${landSize},
lat: ${lat},
lon: ${lon}
    ''';
  }
}
