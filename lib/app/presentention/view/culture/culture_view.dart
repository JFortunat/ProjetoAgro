import 'package:farm_management/app/presentention/controllers/culture/new_culture_controller.dart';
import 'package:farm_management/app/presentention/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';

class CultureView extends StatefulWidget {
  const CultureView({super.key});

  @override
  State<CultureView> createState() => _CultureViewState();
}

class _CultureViewState extends State<CultureView> {
  var cultureController = GetIt.I.get<NewCultureController>();

  datepicker1() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1920),
      lastDate: DateTime(2050),
    ).then((value) => cultureController.plantationStart = value!);
  }

  datepicker2() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1920),
      lastDate: DateTime(2050),
    ).then((value) => cultureController.estimatedTime = value!);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    bool isLoading = false;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar Cultura'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Nome da Cultura'),
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
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Descrição da Cultura'),
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
            const Text(
              'Período de tempo',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            Row(
              children: [
                Observer(builder: (_) {
                  return Expanded(
                    flex: 1,
                    child: Container(
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
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ]),
                      child: Column(
                        children: [
                          const Text('Início',
                              style: TextStyle(
                                  color: Color(0xFF006E28),
                                  fontWeight: FontWeight.bold)),
                          InkWell(
                            onTap: datepicker1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.calendar_month,
                                  color: Color(0xFF006E28),
                                ),
                                Text(
                                  DateFormat('d/MM/yyyy').format(
                                      cultureController.plantationStart),
                                  style: const TextStyle(
                                      color: Color(0xFF006E28),
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
                const SizedBox(
                  width: 12,
                ),
                Observer(builder: (_) {
                  return Expanded(
                    flex: 1,
                    child: Container(
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
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ]
                      ),
                      child: Column(
                        children: [
                          const Text(
                            'Fim',
                            style: TextStyle(
                                color: Color(0xFF006E28),
                                fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                            onTap: datepicker2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.calendar_month,
                                  color: Color(0xFF006E28),
                                ),
                                Text(
                                  DateFormat('d/MM/yyyy')
                                      .format(cultureController.estimatedTime),
                                  style: const TextStyle(
                                      color: Color(0xFF006E28),
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ],
            ),
            const SizedBox(
              height: 36,
            ),
            InkWell(
              onTap: () => Navigator.of(context)
                  .pushReplacementNamed('/home-navigation'),
              child: CustomButton(
                  text: 'Cadastrar', height: 50, isLoading: isLoading),
            )
          ],
        ),
      ),
    );
  }
}
