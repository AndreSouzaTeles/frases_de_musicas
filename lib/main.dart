import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Nessa terra de gigantes, que trocam vidas por diamantes\n\n- Engenheiros Do Havai\n- Terra de Gigantes",
    "O melhor presente Deus me Deus, a vida me ensinou a lutar pelo que é meu\n\n- Charlie Brown Jr\n- Lutar Pelo Que É Meu",
    "Eu fico à vontade com a sua ausência\n\n- Capital Inicial\n- Tudo que Vai",
    "Só os loucos sabem\n\n- Charlie Brown Jr\n- Só os Loucos Sabem",
    "Nas favelas, nos senados, sugeira pra todo lado, ninguem respeita a constituição, mas todos acreditão no futuro da nação\n\n- Legião Urbana\n- Que País é esse",
    "Não consigo dizer se é bom ou mal assim como o ar me parece vital\n\n- Capital Inicial\n- Fogo",
    "Eu vejo o futuro repetir o passado eu vejo um museu de grandes novidades o tempo não pára.\n\n- Cazuza\n- O Tempo Não Para",
    "Cada um de nós compõe a sua própria história e cada ser em si carrega o dom de ser capaz de ser feliz.\n\n- Renato Teixeira\n- Ser Feliz",
    "E o fim é belo, incerto, depende de como você vê\n\n- Teatro Magico\n- O Anjo Mais Velho",
    "Se querer é poder, tem que ir até o final\n\n- Paulo Ricardo\n- Vida Real"
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase";

  void _gerarFrase(){

    //Randomico com quantidade de numeros de frases
    var numeroSorteado = Random().nextInt( _frases.length );

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Fases de Músicas"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white10,
            border: Border.all(width: 3, color: Colors.indigoAccent),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage("assets/images/logo.png"),
                width: 350,
              ),
              Spacer(),
              //Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              Spacer(),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                color: Colors.blue,
                onPressed: _gerarFrase,
              ),

            ],
          ),
        )
    );
  }
}
