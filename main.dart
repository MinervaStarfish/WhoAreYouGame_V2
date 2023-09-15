import 'dart:io';
import 'utils.dart';
import 'funciones.dart';
import 'analizadores.dart';

void main(List<String> args) {
  print('\nBienvenido a la selección de juegos\n');
  print('Elige tu juego:\n1. ¿Qué personaje de League of Legends eres?\n2. ¿Qué personaje de Adventure Time eres?\n3. ¿Qué personaje de Steven universe eres?');
  String? game = stdin.readLineSync();

  switch (game) {
    case '1': primerJuego();
    break;

    case '2': segundoJuego();
    break;

    case '3': tercerJuego();
    break;

    default:game;
  }
}