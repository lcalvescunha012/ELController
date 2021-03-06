import 'package:flutter/material.dart';

class HistoricoVisitaTela extends StatefulWidget {
  @override
  _HistoricoVisitaTelaState createState() => _HistoricoVisitaTelaState();
}

class _HistoricoVisitaTelaState extends State<HistoricoVisitaTela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Historico de visitas"),
          centerTitle: true,
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  leading: Icon(Icons.label, color: Colors.yellow),
                  title: Text('Nome Loja',
                      style: TextStyle(fontSize: 20, color: Colors.yellow)),
                  subtitle: Text('Descrição de dia e hora.',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontStyle: FontStyle.italic)),
                  onTap: () {
                    print('item pressionado');
                    Navigator.pushNamed(context, '/list1');
                  },
                  //hoverColor: Colors.blue[100],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}
