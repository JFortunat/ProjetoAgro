import 'package:farm_management/app/presentention/controllers/home/home_controller.dart';
import 'package:farm_management/app/presentention/widgets/lands_widget.dart';
import 'package:farm_management/app/presentention/widgets/orders_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

var homeController = GetIt.I.get<HomeController>();

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Olá ${homeController.userModel.userName}!'),
            ),
            ListTile(
              title: Text('Email: ${homeController.userModel.userEmail}'),
            ),
            ListTile(
              title: Text('Cel: ${homeController.userModel.userCel}'),
            ),
            ListTile(
              title: Text('Crea: ${homeController.userModel.userCrea}'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                useRootNavigator: false,
                context: context,
                builder: (context) {
                  return Dialog(
                    child: ListView(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shrinkWrap: true,
                      children: [
                        'Sair',
                      ]
                          .map(
                            (e) => InkWell(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 16),
                                child: Text(e),
                              ),
                              onTap: () async {
                                Navigator.of(context).pop();
                                Navigator.of(context)
                                    .pushReplacementNamed('/login');
                              },
                            ),
                          )
                          .toList(),
                    ),
                  );
                },
              );
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: LandWidget(),
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            const Text('Ordens'),
            Expanded(
              flex: 2,
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  height: 5,
                ),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Observer(builder: (_) {
                    return InkWell(
                      onTap: () {
                        // Abrir informações detalhadas
                      },
                      onLongPress: () {
                        // Criar uma nova ordem
                      },
                      child: OrdersWidget(
                        done: homeController.done,
                      ),
                    );
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
