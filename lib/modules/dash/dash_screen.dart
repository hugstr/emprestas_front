import 'package:empresta_s/widget/appbar/app_bar_widget.dart';
import 'package:flutter/material.dart';

class DashScreen extends StatelessWidget {
  const DashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
    );
  }
}
