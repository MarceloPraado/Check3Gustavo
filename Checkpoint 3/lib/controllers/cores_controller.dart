import 'package:check3cp/main.dart';
import 'package:flutter/material.dart';

class CoresController extends ChangeNotifier{

  static CoresController instance = new CoresController();

Color CorPrincipal = Colors.green;
  String NomePrincipal = 'Gustavo';

  bool MudancaCor = false;
  bool MudancaNome = false;
  
  mudarcorfuncao() {
    MudancaCor = !MudancaCor;
    notifyListeners();
  }

  Mudarnomefuncao() {
   MudancaNome = !MudancaNome;
    notifyListeners();
  }

}