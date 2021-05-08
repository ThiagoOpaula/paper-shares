import 'package:flutter/material.dart';
import 'package:papershare/core/core.dart';
import 'package:papershare/shared/input/input_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email;
  String senha;

  void updateEmail(String email) {
    setState(() {
      email = email;
      print(email);
    });
  }

  void updateSenha(String senha) {
    setState(() {
      senha = senha;
      print(senha);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: AppColors.background),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.icon,
                height: 130,
                width: 130,
              ),
              Text(
                'Paper Shares',
                style: AppTextStyles.title,
              ),
              Form(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 60, horizontal: 32),
                  child: Column(
                    children: [
                      InputWidget(
                        onSonChanged: (String email) {
                          updateEmail(email);
                        },
                        hideText: false,
                        label: 'Username',
                        placeholder: 'insira seu e-mail',
                      ),
                      SizedBox(height: 20),
                      InputWidget(
                        onSonChanged: (String senha) {
                          updateSenha(senha);
                        },
                        hideText: true,
                        label: 'Password',
                        placeholder: 'insira sua senha',
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: ElevatedButton(
                          style: TextButton.styleFrom(primary: AppColors.text),
                          onPressed: () {
                            //if (_formKey.currentState!.validate()) {}
                          },
                          child: const Text('Login'),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
