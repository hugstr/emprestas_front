import 'package:empresta_s/modules/edit/edit_screen.dart';
import 'package:empresta_s/modules/product/product_screen.dart';
import 'package:empresta_s/widget/appbar/app_bar_widget.dart';
import 'package:flutter/material.dart';

class DashScreen extends StatelessWidget {
  const DashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Container(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            DashCard(),
            DashCard(),
            DashCard(),
            DashCard(),
            DashCard(),
            DashCard(),
            DashCard(),
            DashCard(),
          ],
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
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductScreen(),
          ),
        );
      },
      child: Card(
        elevation: 0,
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EditScreen()));
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
