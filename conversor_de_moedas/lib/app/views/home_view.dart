import 'package:conversor_de_moedas/app/components/currency_box.dart';
import 'package:conversor_de_moedas/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // ligação da view com o controlle
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();

  HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(fromText: fromText, toText: toText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false, // evitar quebra do teclado
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Image.asset(
                'assets/img/currency.png',
                width: 300,
                height: 300,
              ),
              // recebe a moeda de origem
              CurrencyBox(
                selectedItem: homeController.fromCurrency,
                controller: fromText,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    print("\nitens: $homeController.currencies");
                    homeController.fromCurrency = model;
                    print("\nOrigem: ${model.name}");
                    print("\nFromText: ${fromText.value}");
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              // para qual moeda será convertido
              CurrencyBox(
                  selectedItem: homeController.toCurrency,
                  controller: toText,
                  items: homeController.currencies,
                  onChanged: (model) {
                    setState(() {
                      print("\nToText: $toText");
                      homeController.toCurrency = model;
                      print("\ndestino: ${model.name}");
                    });
                  }),
              SizedBox(
                height: 50,
              ),
              RaisedButton(
                onPressed: () {
                  homeController.convert();
                },
                child: Text('CONVERTER'),
                color: Colors.amber,
              )
            ],
          ),
        ));
  }
}
