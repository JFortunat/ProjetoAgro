import 'package:farm_management/app/presentention/view/home/home_view.dart';
import 'package:farm_management/app/presentention/view/lands/lands_view.dart';
import 'package:farm_management/app/presentention/view/orders/oders_view.dart';
import 'package:flutter/material.dart';

class HomeNavigationView extends StatefulWidget {
  const HomeNavigationView({super.key});

  @override
  State<HomeNavigationView> createState() => _HomeNavigationViewState();
}

class _HomeNavigationViewState extends State<HomeNavigationView> {
    int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.add_circle), label: 'Nova Ordem'),
          NavigationDestination(
              icon: Icon(Icons.assignment_add), label: 'Terras')
        ],
      ),
      body: [
        const HomeView(),
        const OrdersView(),
        const LandsView()
      ][currentPageIndex],
    );
  }
}
