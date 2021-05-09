import 'package:flutter/material.dart';
import 'package:paper_shares/core/core.dart';
import 'package:paper_shares/login/widgets/Button_widget.dart';
import 'package:paper_shares/shared/input/input_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String oldemail;
  String oldsenha;

  void updateEmail(String email) {
    setState(() {
      oldemail = email;
      print(email);
    });
  }

  void updateSenha(String senha) {
    setState(() {
      oldsenha = senha;
      print(senha);
    });
  }

  void login() {
    print('$oldemail $oldsenha');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(color: AppColors.background),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 60, horizontal: 32),
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
                SizedBox(height: 24),
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
                SizedBox(height: 24),
                ButtonWidget(
                    buttonText: 'login',
                    onButtonPressed: () {
                      login();
                    }),
                ButtonWidget(buttonText: 'Cadastra-se'),
                SizedBox(height: 24),
                Text(
                  'Oh no! I forgot my password',
                  style: AppTextStyles.forgotMessage,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
