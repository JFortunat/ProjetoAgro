import 'package:farm_management/app/presentention/controllers/orders/orders_controller.dart';
import 'package:farm_management/app/presentention/widgets/custom_button.dart';
import 'package:farm_management/app/presentention/widgets/lands_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';

class OrdersView extends StatefulWidget {
  const OrdersView({super.key});

  @override
  State<OrdersView> createState() => _OrdersViewState();
}

class _OrdersViewState extends State<OrdersView> {
  var orderController = GetIt.I.get<OrdersController>();

  datepicker1() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1920),
      lastDate: DateTime(2050),
    ).then((value) => orderController.orderDate = value!);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    bool isLoading = false;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova ordem'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        width: size.width,
        height: size.height,
        child: Column(children: [
          LandWidget(),
          const SizedBox(
            height: 12,
          ),
          TextFormField(
            decoration: const InputDecoration(
              label: Text('Descrição do serviço'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: datepicker1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Data do Agendamento'),
                Container(
                  height: 40,
                  width: 120,
                  decoration: ShapeDecoration(
                      color: Colors.green[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset:
                              const Offset(0, 2), // changes position of shadow
                        ),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.calendar_month,
                        color: Color(0xFF006E28),
                      ),
                      Text(
                        DateFormat('d/MM/yyyy')
                            .format(orderController.orderDate),
                        style: const TextStyle(
                            color: Color(0xFF006E28),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () =>
                Navigator.of(context).pushReplacementNamed('/home-navigation'),
            child: CustomButton(
                text: 'Cadastrar', height: 50, isLoading: isLoading),
          )
        ]),
      ),
    );
  }
}
