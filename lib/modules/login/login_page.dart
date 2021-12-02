import 'package:empresta_s/modules/login/component/login_form.dart';
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
                  LoginForm(size: size),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Column(
          children: [
            const Text(
              "powered by:",
              style: TextStyle(fontSize: 16),
            ),
            Image.asset(AppImages.senaiLogo, height: size.height * 0.07),
          ],
        ));
  }
}
