import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            child: Column(children: [
              Expanded(
                flex: 1,
                child: Center(
                  child: Text('Farm Buddy!'),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      TextFormField(),
                      TextFormField(),
                    ],
                  )),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Login'),
                    ),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Esqueceu sua senha?',
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Cadastrar',
                          ),
                        ),
                      ],
                    )
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
    ));
  }
}
