import 'package:farm_management/app/presentention/controllers/auth/sign_up_controller.dart';
import 'package:farm_management/app/presentention/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

const List<String> userTypeList = ['fazendeiro', 'tecnico'];

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

String selectedType = userTypeList.first;

class _SignUpViewState extends State<SignUpView> {
  var signUpController = GetIt.I.get<SignUpController>();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Cadastro de usuário'),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(12),
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: Column(
                children: [
                  SizedBox(
                    height: constraints.maxHeight * 0.2,
                    child: Image.asset('assets/agricultor.png')
                  ),
                  const SizedBox(
                    height: 12,
                  ),

                  TextFormField(
                    onChanged: (value) => signUpController.userName,
                    textCapitalization: TextCapitalization.words,
                    decoration: const InputDecoration(
                      label: Text('João Fortunato'),
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
                    onChanged: (value) => signUpController.userPass,
                    obscureText: true,
                    decoration: const InputDecoration(
                      label: Text('Senha'),
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
                    onChanged: (value) => signUpController.userConfirmPass,
                    obscureText: true,
                    decoration: const InputDecoration(
                      label: Text('Confirmar senha'),
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
                    onChanged: (value) => signUpController.userCel,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      label: Text('N° celular'),
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
                  selectedType == userTypeList[1] ? 
                  TextFormField(
                    onChanged: (value) => signUpController.userCrea,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      label: Text('N° CREA'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                    ),
                  ): Container(),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Tipo de usuário:',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      DropdownButton(
                        value: selectedType,
                        onChanged: (String? type) {
                          setState(() {
                            selectedType = type!;
                          });
                        },
                        items: userTypeList.map<DropdownMenuItem<String>>(
                          (String type) {
                            return DropdownMenuItem(
                              value: type,
                              child: Text(type),
                            );
                          },
                        ).toList(),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  InkWell(
                    onTap: () => Navigator.of(context).pushReplacementNamed('/home-navigation'),
                    child: CustomButton(
                        text: 'Cadastrar', height: 50, isLoading: isLoading),
                  )
                ],
              ),
            ),
          );
        } else {
          return Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
          );
        }
      }),
    );
  }
}
