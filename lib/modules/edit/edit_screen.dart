import 'package:empresta_s/modules/dash/dash_screen.dart';
import "package:flutter/material.dart";

class EditScreen extends StatelessWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Editar item"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 70),
              TextFormField(
                decoration: InputDecoration(labelText: "Email do usuário"),
              ),
              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(labelText: "Itens"),
              ),
              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(labelText: "Data de devolução"),
              ),
              Image.network(
                "https://chart.googleapis.com/chart?chs=200x200&cht=qr&chl=71cc88d1-10ff-43ab-95f7-7dd7f7dc7af3",
                width: size.width,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashScreen()));
                },
                child: Text(
                  "Salvar",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
