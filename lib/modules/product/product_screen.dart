import 'package:empresta_s/modules/dash/dash_screen.dart';
import 'package:empresta_s/modules/edit/edit_screen.dart';
import "package:flutter/material.dart";

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Empréstimo 3"),
        actions: [
          ButtonBar(
            buttonPadding: EdgeInsets.all(0),
            children: [
              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EditScreen()));
                },
                child: Icon(
                  Icons.edit,
                ),
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all(Colors.green.shade300),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Abrir Câmera?"),
                      actions: [
                        TextButton(
                          child: Text("Sim"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        TextButton(
                          child: Text("Não"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ),
                  );
                },
                child: Icon(
                  Icons.check,
                ),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Text(
                "Nome do usuário",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "pedro",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Descrição do itens",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Clean Coder, ",
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Status do Produto",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Pendente",
                style: TextStyle(fontSize: 15, color: Colors.yellow),
              ),
              Image.network(
                "https://chart.googleapis.com/chart?chs=200x200&cht=qr&chl=71cc88d1-10ff-43ab-95f7-7dd7f7dc7af3",
                width: size.width,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      // retorna um objeto do tipo Dialog
      return AlertDialog(
        title: new Text("Alert Dialog titulo"),
        content: new Text("Alert Dialog body"),
        actions: <Widget>[
          // define os botões na base do dialogo
          new FlatButton(
            child: new Text("Fechar"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
