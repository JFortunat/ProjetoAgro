import 'package:farm_management/app/presentention/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return Container(
              padding: const EdgeInsets.all(12),
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: Column(children: [
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Text('Farm Buddy!'),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            label: Text('nome@gmail.com'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                          ),
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            label: Text('*******'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/home-navigation');
                        },
                        child: CustomButton(
                            text: 'Login', height: 50, isLoading: isLoading),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/sign-up');
                        },
                        child: CustomButton(
                          text: 'Cadastrar',
                          height: 50,
                          isLoading: isLoading,
                        ),
                      ),
                      const Icon(Icons.flutter_dash)
                    ],
                  ),
                ),
              ]),
            );
          } else {
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
            );
          }
        },
      ),
    );
  }
}
