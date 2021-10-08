import 'package:empresta_s/modules/dash/dash_screen.dart';
import 'package:empresta_s/shared/themes/app_images.dart';
import "package:flutter/material.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: size.height * 0.1,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 28.0, left: 28.0),
                    child: Image.asset(
                      AppImages.emprestasLogo,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration:
                              const InputDecoration(hintText: 'Usuário'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: TextFormField(
                            decoration:
                                const InputDecoration(hintText: 'Senha'),
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
                        Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Column(
                              children: [
                                const Text(
                                  "powered by:",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Image.asset(AppImages.senaiLogo,
                                    height: size.height * 0.07),
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
