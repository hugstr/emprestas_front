import 'package:empresta_s/modules/edit/edit_screen.dart';
import 'package:empresta_s/modules/product/product_screen.dart';
import 'package:empresta_s/widget/appbar/app_bar_widget.dart';
import 'package:flutter/material.dart';

class DashScreen extends StatelessWidget {
  const DashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBarWidget(),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: const [
          DashCard(
            cardIcon: "https://m.media-amazon.com/images/I/51uhS7QO--L.jpg",
            cardTitle: "Clean Coder",
            cardSubtitle: "Dev. 5/10",
            cardColor: Colors.redAccent,
          ),
          DashCard(
            cardIcon: "https://m.media-amazon.com/images/I/51EDUtVbQfS.jpg",
            cardTitle: "The Mythical Man-Month",
            cardSubtitle: "Dev. 7/10",
            cardColor: Colors.greenAccent,
          ),
          DashCard(
            cardIcon:
                "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQB7Pm55ivuiYtOfP6pJUtk9fO5UzdLXs0o3z2y77voY0xInJP_",
            cardTitle: "Algoritmos teoria e prática",
            cardSubtitle: "Dev. 18/10",
          ),
          DashCard(
            cardIcon:
                "https://m.media-amazon.com/images/P/B075CN35WH.01._SCLZZZZZZZ_SX500_.jpg",
            cardTitle: "Leonardo Da Vinci",
            cardSubtitle: "Dev. 18/10",
          ),
          DashCard(
            cardIcon:
                "https://images-na.ssl-images-amazon.com/images/I/71eTsvokmjL.jpg",
            cardTitle: "Effective Modern C++",
            cardSubtitle: "Dev. 18/10",
          ),
          DashCard(
            cardIcon: "https://m.media-amazon.com/images/I/51aqYc1QyrL.jpg",
            cardTitle: "Hands-on machine learning",
            cardSubtitle: "Dev. 18/10",
          ),
          DashCard(
            cardIcon: "https://m.media-amazon.com/images/I/51WMrr2knUL.jpg",
            cardTitle: "DevOps Handbook",
            cardSubtitle: "Dev. 23/10",
          ),
          DashCard(
            cardIcon:
                "https://images-na.ssl-images-amazon.com/images/I/91y1jCIfhSL.jpg",
            cardTitle: "Scrum",
            cardSubtitle: "Dev. 27/10",
          ),
        ],
      ),
    );
  }
}

class DashCard extends StatelessWidget {
  const DashCard({
    Key? key,
    this.cardIcon =
        "https://socialistmodernism.com/wp-content/uploads/2017/07/placeholder-image.png?w=640",
    this.cardTitle = "",
    this.cardSubtitle = "",
    this.cardColor = Colors.white,
  }) : super(key: key);

  final String cardIcon;
  final String cardTitle, cardSubtitle;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(cardColor),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProductScreen(),
          ),
        );
      },
      child: Card(
        color: cardColor,
        elevation: 0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Image.network(cardIcon),
              title: Text(cardTitle),
              subtitle: Text(cardSubtitle),
            ),
            ButtonBar(
              children: [
                TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: const Text('Excluir'),
                  onPressed: () {
                    // TODO
                  },
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: const Text('Editar'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditScreen()));
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
