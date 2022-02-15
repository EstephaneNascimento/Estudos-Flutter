import 'package:conversor_de_moedas/app/models/currency_model.dart';
import 'package:flutter/material.dart';

// classe que contém as regras de negócio da aplicação

class HomeController {
  List<CurrencyModel> currencies;

  // recebe a quantia para conversão
  final TextEditingController fromText;
  // devolve a quantia convertida
  final TextEditingController toText;

  // recebe a moeda de origem
  CurrencyModel fromCurrency;
  // recebe para qual moeda será convertido
  CurrencyModel toCurrency;

  HomeController({this.fromText, this.toText}) {
    currencies = CurrencyModel.getCurrencies();
    fromCurrency = currencies[0];
    toCurrency = currencies[1];
  }

  void convert() {
    String text = fromText.text;
    print("\nText: $text");
    double value = double.tryParse(text.replaceAll(',', '.')) ?? 1.0;
    print("\nValue: $value");
    double returnValue = 0;
    if (toCurrency.name == 'Real') {
      print("\nReal");
      returnValue = value * fromCurrency.real;
    } else if (toCurrency.name == 'Dolar') {
      print("\nDolar");
      returnValue = value * fromCurrency.dolar;
    } else if (toCurrency.name == 'Euro') {
      print("\nEuro");
      returnValue = value * fromCurrency.euro;
    } else if (toCurrency.name == 'Bitcoin') {
      print("\nBitcoin");
      returnValue = value * fromCurrency.bitcoin;
    }

    toText.text = returnValue.toStringAsFixed(2);
    print("\ntoText.text: $toText.text");
  }
}
