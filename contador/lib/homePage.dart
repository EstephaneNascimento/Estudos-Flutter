import 'package:contador/app_controler.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // para implementar esse método devemos criar
    //uma classe state
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int count = 0;
  // nome da classe que queremos referenciar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          centerTitle: true,
          title: Text(
            "Home",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0
            ),
          ),
          actions: [ // butons que ficam na appBar
            CustonSwitch(),
          ],
        ),
        body: Center(
          child: Text(
            "Contando $count", 
            style: TextStyle(
              color: Colors.pink,
              fontSize: 40.0 ,
            ),
          ),),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          backgroundColor: Colors.pink,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ));
  }
}

/* Por mais que a tela esteja sendo modificada ele 
reconstroi a tela inteira, por isso podemos usar um stateless
em vez do statefull, ou seja em casos que a tela será inteira-
mente reconstruída pode-se usar stateless em casos que partes da tela
será reconstruída usamos statefull
*/

class CustonSwitch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (bool value){
          AppController.instance.changeTheme();
      },);
  }
}

/*  O scaffold é um widget do material design
que já vem com várias partes do aplicativo 
desenvolvidas, como a criação de uma appBar. 
*/

/*
Single render  cria um novo render e não herda as
características do seu pai.
Multi render utiliza o mesmo render do pai, irá herdar 
as características do pai

Ex.: Se temos um widget Row ele é um single render
pois as caracteríticas que coloquei para ele é que 
serão constuídas na tela.

No caso de um Container ele é multi render pois se coloco
um container dentro do outro, com tamanhos diferentes
o container filho irá ter o mesmo tamanho do pai na tela 
mesmo sendo específicado tamanhos diferentes, pois eles
utilizam o mesmo render, as características do pai passam para
o filho. Para resolver esse problema podemos usar widgets
de alinhamento (pois são single render) como Aling e colocar o
segundo container como filho do Aling
*/


