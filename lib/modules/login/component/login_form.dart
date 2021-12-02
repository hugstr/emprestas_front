import 'package:empresta_s/modules/dash/dash_screen.dart';
import 'package:empresta_s/modules/login/login_page.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(hintText: 'Usuário'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Senha'),
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1,
                  vertical: size.height * 0.01,
                ),
              ),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DashScreen(),
                  ),
                ),
              },
              child: const Text('Entrar'),
            ),
          ),
          SizedBox(
            height: size.height * 0.25,
          ),
          Footer(size: size),
        ],
      ),
    );
  }
}
