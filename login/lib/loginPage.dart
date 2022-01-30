import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  String email;
  String senha;

  _body(BuildContext context){
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/0.80,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Location Changer", 
              style: TextStyle(
                color: Colors.white,
                fontSize: 18
                ),),
              SizedBox(
                height: 10,
              ),
              Text("Plugin App for Tinder", 
              style: TextStyle(
                color: Colors.white,
                fontSize: 12
              ),),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.white,
                child: Text(
                  "Login with Facebook",
                  style: TextStyle(
                    color: Colors.red.shade300),
                ),
                shape: OutlineInputBorder(borderRadius: 
                BorderRadius.circular(40.0),
                borderSide: BorderSide(color: Colors.white),
                ),
              ), 
            ],
          ),
        )
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.red.shade400,
          ),
          SizedBox(
            // MediaQuery para obter a largura e altura da tela
            width: MediaQuery.of(context).size.width/1.05, 
            height: MediaQuery.of(context).size.height/1.38,
            child: Container(
                width: 250,
                height: 250,
                child: 
                  Image.asset('assets/img/Tinde_2.png'),
              ),
          ),
          Container(
            color: Colors.white.withOpacity(0.15),
          ),
           _body(context),
        ],
      )
    );
  }
}






