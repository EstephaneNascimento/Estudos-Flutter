import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier {
  // utilizando o conceito singleton do Design Pattern
  static AppController instance = AppController();
  // criamos uma classe estática que instancia ela mesma
  
  bool isDartTheme = false;
  changeTheme() {
    isDartTheme =
        !isDartTheme; // modifica para o estado oposto ao que foi recebido
    notifyListeners(); // esse método é chamado para notificar a mudança a todos
    // os ouvintes (As partes do código que utilizam o valor de isDartTheme)
  }
}

// lembre-se de instanciar essa classe no homePage e no AppWidget para
// que eles possam se comunicar
