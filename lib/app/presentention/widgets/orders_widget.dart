// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class OrdersWidget extends StatelessWidget {
  final bool done;
  const OrdersWidget({
    Key? key,
    this.done = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Colors.green[100]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Data: 12/02/23'),
              done == true
                  ? const CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    )
                  : const CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.cancel,
                        color: Colors.white,
                      ),
                    )
            ],
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text('Descrição: Alguma ação'))
        ],
      ),
    );
  }
}
