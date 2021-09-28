import 'package:empresta_s/shared/themes/app_colors.dart';
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
      backgroundColor: Colors.blue,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: <Widget>[
            Container(
              width: size.width,
              height: size.height * 0.3,
              color: AppColors.primary,
            ),
            Positioned(
              top: size.height * 0.1,
              left: 0,
              right: 0,
              child: Image.asset(
                AppImages.logo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
