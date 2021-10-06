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
              Image.network(
                "https://m.media-amazon.com/images/I/51uhS7QO--L.jpg",
                height: size.height * 0.2,
                width: size.width,
              ),
              SizedBox(height: 70),
              TextFormField(
                decoration: InputDecoration(labelText: "Nome do item"),
              ),
              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(labelText: "Descrição"),
              ),
              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(labelText: "Quantidade"),
              ),
              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(labelText: "Categoria"),
              ),
              Image.network(
                "https://chart.googleapis.com/chart?chs=200x200&cht=qr&chl=cleancoder",
                width: size.width,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green)),
                onPressed: () {
                  Navigator.pop(context);
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
