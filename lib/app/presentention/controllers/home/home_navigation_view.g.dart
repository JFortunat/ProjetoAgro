// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_navigation_view.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeNavigationController on _HomeNavigationControllerBase, Store {
  late final _$userModelAtom =
      Atom(name: '_HomeNavigationControllerBase.userModel', context: context);

  @override
  UserModel get userModel {
    _$userModelAtom.reportRead();
    return super.userModel;
  }

  @override
  set userModel(UserModel value) {
    _$userModelAtom.reportWrite(value, super.userModel, () {
      super.userModel = value;
    });
  }

  @override
  String toString() {
    return '''
userModel: ${userModel}
    ''';
  }
}
