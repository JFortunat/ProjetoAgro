// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OrdersController on _OrdersControllerBase, Store {
  late final _$orderDateAtom =
      Atom(name: '_OrdersControllerBase.orderDate', context: context);

  @override
  DateTime get orderDate {
    _$orderDateAtom.reportRead();
    return super.orderDate;
  }

  @override
  set orderDate(DateTime value) {
    _$orderDateAtom.reportWrite(value, super.orderDate, () {
      super.orderDate = value;
    });
  }

  @override
  String toString() {
    return '''
orderDate: ${orderDate}
    ''';
  }
}
