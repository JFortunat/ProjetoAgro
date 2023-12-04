import 'package:farm_management/app/presentention/widgets/orders_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ProfessionalView extends StatefulWidget {
  const ProfessionalView({super.key});

  @override
  State<ProfessionalView> createState() => _ProfessionalViewState();
}

class _ProfessionalViewState extends State<ProfessionalView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(12),
      height: size.height,
      width: size.width,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          height: 5,
        ),
        itemCount: 2,
        itemBuilder: (context, index) {
          return Observer(
            builder: (_) {
              return InkWell(
                onTap: () {
                  // Abrir informações detalhadas
                },
                onLongPress: () {
                  // Criar uma nova ordem
                },
                child: OrdersWidget(),
              );
            },
          );
        },
      ),
    );
  }
}
