import 'package:flutter/material.dart';

class LandsView extends StatefulWidget {
  const LandsView({super.key});

  @override
  State<LandsView> createState() => _LandsViewState();
}

class _LandsViewState extends State<LandsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Página terras'),
      ),
    );
  }
}
