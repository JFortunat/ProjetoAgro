import 'package:flutter/material.dart';

class LandWidget extends StatelessWidget {
  const LandWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Colors.green[100]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nome: Fazenda da Esperança'),
              Text('Culturas: Soja, arroz e feijão'),
              Text('Tamanho: 10 hectares'),
              Text('Localização: Rio Bonito - RJ'),
            ],
          ),
          ImageIcon(
            AssetImage('assets/farm.png'),
            size: 100,
          )
        ],
      ),
    );
  }
}
