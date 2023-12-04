// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SignUpController on _SignUpControllerBase, Store {
  late final _$userNameAtom =
      Atom(name: '_SignUpControllerBase.userName', context: context);

  @override
  String get userName {
    _$userNameAtom.reportRead();
    return super.userName;
  }

  @override
  set userName(String value) {
    _$userNameAtom.reportWrite(value, super.userName, () {
      super.userName = value;
    });
  }

  late final _$userEmailAtom =
      Atom(name: '_SignUpControllerBase.userEmail', context: context);

  @override
  String get userEmail {
    _$userEmailAtom.reportRead();
    return super.userEmail;
  }

  @override
  set userEmail(String value) {
    _$userEmailAtom.reportWrite(value, super.userEmail, () {
      super.userEmail = value;
    });
  }

  late final _$userPassAtom =
      Atom(name: '_SignUpControllerBase.userPass', context: context);

  @override
  String get userPass {
    _$userPassAtom.reportRead();
    return super.userPass;
  }

  @override
  set userPass(String value) {
    _$userPassAtom.reportWrite(value, super.userPass, () {
      super.userPass = value;
    });
  }

  late final _$userConfirmPassAtom =
      Atom(name: '_SignUpControllerBase.userConfirmPass', context: context);

  @override
  String get userConfirmPass {
    _$userConfirmPassAtom.reportRead();
    return super.userConfirmPass;
  }

  @override
  set userConfirmPass(String value) {
    _$userConfirmPassAtom.reportWrite(value, super.userConfirmPass, () {
      super.userConfirmPass = value;
    });
  }

  late final _$userCelAtom =
      Atom(name: '_SignUpControllerBase.userCel', context: context);

  @override
  String get userCel {
    _$userCelAtom.reportRead();
    return super.userCel;
  }

  @override
  set userCel(String value) {
    _$userCelAtom.reportWrite(value, super.userCel, () {
      super.userCel = value;
    });
  }

  late final _$userCreaAtom =
      Atom(name: '_SignUpControllerBase.userCrea', context: context);

  @override
  String get userCrea {
    _$userCreaAtom.reportRead();
    return super.userCrea;
  }

  @override
  set userCrea(String value) {
    _$userCreaAtom.reportWrite(value, super.userCrea, () {
      super.userCrea = value;
    });
  }

  late final _$userTypeAtom =
      Atom(name: '_SignUpControllerBase.userType', context: context);

  @override
  String get userType {
    _$userTypeAtom.reportRead();
    return super.userType;
  }

  @override
  set userType(String value) {
    _$userTypeAtom.reportWrite(value, super.userType, () {
      super.userType = value;
    });
  }

  late final _$createUserAsyncAction =
      AsyncAction('_SignUpControllerBase.createUser', context: context);

  @override
  Future<dynamic> createUser() {
    return _$createUserAsyncAction.run(() => super.createUser());
  }

  @override
  String toString() {
    return '''
userName: ${userName},
userEmail: ${userEmail},
userPass: ${userPass},
userConfirmPass: ${userConfirmPass},
userCel: ${userCel},
userCrea: ${userCrea},
userType: ${userType}
    ''';
  }
}
