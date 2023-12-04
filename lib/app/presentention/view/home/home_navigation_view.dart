import 'package:farm_management/app/presentention/controllers/home/home_navigation_view.dart';
import 'package:farm_management/app/presentention/view/culture/culture_view.dart';
import 'package:farm_management/app/presentention/view/home/home_view.dart';
import 'package:farm_management/app/presentention/view/home/professional_view.dart';
import 'package:farm_management/app/presentention/view/lands/new_land_view.dart';
import 'package:farm_management/app/presentention/view/orders/oders_view.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class HomeNavigationView extends StatefulWidget {
  const HomeNavigationView({super.key});

  @override
  State<HomeNavigationView> createState() => _HomeNavigationViewState();
}

class _HomeNavigationViewState extends State<HomeNavigationView> {
  var homeNaviagtionController = GetIt.I.get<HomeNavigationController>();

  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    if (homeNaviagtionController.userModel.userType == 'tecnico') {
      return Scaffold(
        appBar: AppBar(
          title: Text(
              'Bem vindo, ${homeNaviagtionController.userModel.userName}!'),
        ),
        body: const ProfessionalView(),
      );
    } else {
      return Scaffold(
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.green[200],
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.add_circle_outline), label: 'Ordem'),
            NavigationDestination(
                icon: ImageIcon(
                  AssetImage('assets/fence.png'),
                ),
                label: 'Terras'),
            NavigationDestination(
                icon: ImageIcon(
                  AssetImage('assets/smart-farm.png'),
                ),
                label: 'Cultura')
          ],
        ),
        body: [
          const HomeView(),
          const OrdersView(),
          const LandsView(),
          const CultureView(),
        ][currentPageIndex],
      );
    }
  }
}
