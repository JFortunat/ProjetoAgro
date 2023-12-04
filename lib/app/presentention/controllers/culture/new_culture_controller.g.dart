// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_culture_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NewCultureController on _NewCultureControllerBase, Store {
  late final _$plantationStartAtom =
      Atom(name: '_NewCultureControllerBase.plantationStart', context: context);

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
      Atom(name: '_NewCultureControllerBase.estimatedTime', context: context);

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

  @override
  String toString() {
    return '''
plantationStart: ${plantationStart},
estimatedTime: ${estimatedTime}
    ''';
  }
}
