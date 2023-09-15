import 'dart:io';
import 'main.dart';
import 'funciones.dart';
import 'utils.dart';

  // Analizador para el nombre
int analizarNombre(Map<DatosJugador, String> respuestasJugador) {
  int puntos = 0;
  int cantidadCaracteres = respuestasJugador[DatosJugador.nombre]!.length;
  
  if (cantidadCaracteres <= 5) {
    puntos += 5;
  } else if (cantidadCaracteres <= 10) {
    puntos += 10;
  } else {
    puntos += 15;
  }
  
  return puntos;
}

  // Analizador para el cumple
int analizarFechaNacimiento(Map<DatosJugador, String> respuestasJugador) {
  int puntos = 0;
  int dia = int.parse(respuestasJugador[DatosJugador.cumpleDia]!);
  int mes = int.parse(respuestasJugador[DatosJugador.cumpleMes]!);
  int ano = int.parse(respuestasJugador[DatosJugador.cumpleAno]!);
  int suma = dia + mes + ano;
  
  if (suma % 2 == 0) {
    puntos += 10;
  } else {
    puntos += 5;
  }
  
  return puntos;
}

  // Analizador para el color
int analizarColorFavorito(Map<DatosJugador, String> respuestasJugador) {
  int puntos = 0;
  int cantidadCaracteres = respuestasJugador[DatosJugador.color]!.length;
  
  if (cantidadCaracteres < 6) {
    puntos += 5;
  } else if (cantidadCaracteres == 6) {
    puntos += 10;
  } else {
    puntos += 15;
  }

  return puntos;
}

  // Analizador para la canción
int analizarCancionFavorita(Map<DatosJugador, String> respuestasJugador) {
  int puntos = 0;
  int cantidadCaracteres = respuestasJugador[DatosJugador.cancion]!.length;
  
  if (cantidadCaracteres <= 5) {
    puntos += 5;
  } else if (cantidadCaracteres <= 10) {
    puntos += 10;
  } else {
    puntos += 15;
  }
  
  return puntos;
}

  // Analizador para el número
int analizarNumero(Map<DatosJugador, String> respuestasJugador) {
  int puntos = 0;
  int numero = int.parse(respuestasJugador[DatosJugador.numero]!);

    if (numero % 2 == 0) {
    puntos += 10;
  } else {
    puntos += 5;
  }
  
  return puntos;
}

  // Analizador para la comida
int analizarComidaFavorita(Map<DatosJugador, String> respuestasJugador) {
  int puntos = 0;
  int cantidadCaracteres = respuestasJugador[DatosJugador.comida]!.length;
  
  if (cantidadCaracteres <= 5) {
    puntos += 5;
  } else if (cantidadCaracteres <= 10) {
    puntos += 10;
  } else {
    puntos += 15;
  }
  
  return puntos;
}

  // Analizador para el juego
int analizarJuegoFavorito(Map<DatosJugador, String> respuestasJugador) {
  int puntos = 0;
  int cantidadCaracteres = respuestasJugador[DatosJugador.juego]!.length;
  
  if (cantidadCaracteres <= 5) {
    puntos += 5;
  } else if (cantidadCaracteres <= 10) {
    puntos += 10;
  } else {
    puntos += 15;
  }
  
  return puntos;
}

  // Analizador para la flor
int analizarFlorFavorita(Map<DatosJugador, String> respuestasJugador) {
  int puntos = 0;
  int cantidadCaracteres = respuestasJugador[DatosJugador.flor]!.length;
  
  if (cantidadCaracteres <= 5) {
    puntos += 5;
  } else if (cantidadCaracteres <= 10) {
    puntos += 10;
  } else {
    puntos += 15;
  }
  
  return puntos;
}

  // Analizador para el animal
int analizarAnimalFavorito(Map<DatosJugador, String> respuestasJugador) {
  int puntos = 0;
  int cantidadCaracteres = respuestasJugador[DatosJugador.animal]!.length;
  
  if (cantidadCaracteres <= 5) {
    puntos += 5;
  } else if (cantidadCaracteres <= 10) {
    puntos += 10;
  } else {
    puntos += 15;
  }
  
  return puntos;
}