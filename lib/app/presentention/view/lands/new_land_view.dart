import 'package:farm_management/app/presentention/controllers/lands/lands_controller.dart';
import 'package:farm_management/app/presentention/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class LandsView extends StatefulWidget {
  const LandsView({super.key});

  @override
  State<LandsView> createState() => _LandsViewState();
}

class _LandsViewState extends State<LandsView> {
  var ladndsController = GetIt.I.get<LandsController>();

  bool isLoading = false;

  datepicker1() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1920),
      lastDate: DateTime(2050),
    ).then((value) => ladndsController.plantationStart = value!);
  }

  datepicker2() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1920),
      lastDate: DateTime(2050),
    ).then((value) => ladndsController.estimatedTime = value!);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Cadastro de Terra'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(12),
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  label: Text('Nome da Fazenda'),
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
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  suffixText: 'Hectares',
                  label: Text('Tamanho'),
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
                  label: Text('Localização'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                ),
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
      ),
    );
  }
}
