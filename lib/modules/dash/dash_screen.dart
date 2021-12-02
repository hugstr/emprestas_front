import 'package:empresta_s/constants/emprestas_const.dart';
import 'package:empresta_s/models/item_class.dart';
import 'package:empresta_s/modules/edit/edit_screen.dart';
import 'package:empresta_s/modules/product/product_screen.dart';
import 'package:empresta_s/widget/appbar/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DashScreen extends StatefulWidget {
  const DashScreen({Key? key}) : super(key: key);

  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  late List<Loan> loans;
  int _selectedIndex = 0;
  bool isLoading = false;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  @override
  void initState() {
    super.initState();
    refreshBooks();
  }

  Future refreshBooks() async {
    setState(() {
      isLoading = true;
    });
    this.loans = await EmprestasDatabase.instance.getAllLoans();
    setState(() {
      isLoading = false;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBarWidget(context),
        body: Center(
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              const DashCard(
                cardTitle: '6 - hugstr',
                cardSubtitle: 'PENDENTE',
                cardColor: Colors.red,
              ),
              const DashCard(
                cardTitle: '4 - anthon',
                cardSubtitle: 'PENDENTE',
              ),
              const DashCard(
                cardTitle: '3 - pedro',
                cardSubtitle: 'PENDENTE',
              ),
              const DashCard(
                cardTitle: '5 - hugstr',
                cardSubtitle: 'CONCL.',
                cardColor: Colors.green,
              ),
              const DashCard(
                cardTitle: '2 - hugstr',
                cardSubtitle: 'CONCL.',
                cardColor: Colors.green,
              ),
              const DashCard(
                cardTitle: '1 - hugstr',
                cardSubtitle: 'CONCL.',
                cardColor: Colors.green,
              ),
              const DashCard(
                cardTitle: '0 - hugstr',
                cardSubtitle: 'CANCEL',
                cardColor: Colors.grey,
              ),
            ],
          ),
        ));
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
                          builder: (context) => const EditScreen(),
                        ),
                      );
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
