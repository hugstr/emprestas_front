import 'package:empresta_s/widget/appbar/app_bar_widget.dart';
import 'package:flutter/material.dart';

class DashScreen extends StatelessWidget {
  const DashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DashCard(),
                        DashCard(),
                        DashCard(),
                        DashCard(),
                        DashCard(),
                        DashCard(),
                        DashCard(),
                        DashCard(),
                      ]),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DashCard(),
                        DashCard(),
                        DashCard(),
                        DashCard(),
                        DashCard(),
                        DashCard(),
                        DashCard(),
                        DashCard(),
                      ])
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DashCard extends StatelessWidget {
  const DashCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 150,
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Item'),
              subtitle: Text('Descrição'),
            ),
            ButtonBar(
              children: [
                TextButton(
                  child: const Text('Excluir'),
                  onPressed: () {
                    // TODO
                  },
                ),
                TextButton(
                  child: const Text('Editar'),
                  onPressed: () {
                    // TODO
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
