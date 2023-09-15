import 'dart:io';
import 'main.dart';
import 'utils.dart';
import 'analizadores.dart';

  // Función Juego1
dynamic primerJuego (){
  Map<DatosJugador, String> respuestasJugador = {};
  print("\n¡Bienvenido al juego '¿Qué personaje de League of Legends eres?'!\n");

    // Preguntar el nombre del jugador
  String nombre = preguntador("Por favor ingresa tu nombre:", 1);

  respuestasJugador[DatosJugador.nombre] = nombre.split(' ')[0];

   // Preguntar la fecha de nacimiento del jugador
  String fechaNacimiento = preguntador("Por favor ingresa tu fecha de nacimiento en formato dd/mm/yyyy:", 2);

  List<String> partesFechaNacimiento = fechaNacimiento.split('/');
  respuestasJugador[DatosJugador.cumpleDia] = partesFechaNacimiento[0];
  respuestasJugador[DatosJugador.cumpleMes] = partesFechaNacimiento[1];
  respuestasJugador[DatosJugador.cumpleAno] = partesFechaNacimiento[2];

    // Preguntar el color favorito del jugador
  String colorFavorito = preguntador("Por favor ingresa tu color favorito:", 3);
  
  respuestasJugador[DatosJugador.color] = colorFavorito.toLowerCase();

    // Determinar el personaje de League of Legends
  int puntosTotales = 0;
  
    // Llamar a cada función y agregar los puntos al total
  puntosTotales += analizarNombre(respuestasJugador);
  puntosTotales += analizarFechaNacimiento(respuestasJugador);
  puntosTotales += analizarColorFavorito(respuestasJugador);

    // Imprimir el resultado
  String personaje = obtenerPersonajeLOL(puntosTotales);
  print("El personaje es: $personaje");
}

  // Función Juego2
dynamic segundoJuego (){
  Map<DatosJugador, String> respuestasJugador = {};
  print("\n¡Bienvenido al juego '¿Qué personaje de Adventure Time eres?'!\n");

    // Preguntar la canción favorita del jugador
  String cancionFavorita = preguntador("Por favor ingresa tu canción favorita", 4);
  respuestasJugador[DatosJugador.cancion] = cancionFavorita;

    // Preguntar un número al jugador
  String numero = preguntador("Ingrese un número cualquiera", 5);
  respuestasJugador[DatosJugador.numero] = numero;

    // Preguntar la comida favorita del jugador
  String comidaFavorita = preguntador("Por favor ingresa tu canción favorita", 6);
  respuestasJugador[DatosJugador.comida] = comidaFavorita;

    // Determinar el personaje de Adventure Time
  int puntosTotales = 0;

    // Llamar a cada función y agregar los puntos al total
  puntosTotales += analizarCancionFavorita(respuestasJugador);
  puntosTotales += analizarNumero(respuestasJugador);
  puntosTotales += analizarComidaFavorita(respuestasJugador);

    // Imprimir el resultado
  String personaje = obtenerPersonajeAT(puntosTotales);
  print("El personaje es: $personaje");
}

  // Función Juego3
dynamic tercerJuego (){
  Map<DatosJugador, String> respuestasJugador = {};
  print("\n¡Bienvenido al juego '¿Qué personaje de Steven Universe eres?'!\n");

    // Preguntar el juego favorito del jugador
  String juegoFavorito = preguntador("Por favor ingresa tu juego favorito", 7);
  respuestasJugador[DatosJugador.juego] = juegoFavorito;

    // Preguntar la flor favorita del jugador
  String florFavorita = preguntador("Por favor ingresa tu flor favorita", 8);
  respuestasJugador[DatosJugador.flor] = florFavorita;

    // Preguntar el animal favorito del jugador
  String animalFavorito = preguntador("Ingrese su animal favorito", 9);
  respuestasJugador[DatosJugador.animal] = animalFavorito;

    // Determinar el personaje de Adventure Time
  int puntosTotales = 0;

    // Llamar a cada función y agregar los puntos al total
  puntosTotales += analizarJuegoFavorito(respuestasJugador);
  puntosTotales += analizarFlorFavorita(respuestasJugador);
  puntosTotales += analizarAnimalFavorito(respuestasJugador);

    // Imprimir el resultado
  String personaje = obtenerPersonajeSU(puntosTotales);
  print("El personaje es: $personaje");
}

  // Función para asegurarnos que los campos no esten vacíos
dynamic preguntador (String? pregunta, int tipoRespuesta) {
  print(pregunta);
  String? data = stdin.readLineSync();
  if (tipoRespuesta == 1) { // 1 para Nombre
    return data ?? 'NoName';

  } else if (tipoRespuesta == 2) { // 2 para fecha nacimiento
    return data ?? '01/01/2000';

  } else if (tipoRespuesta == 3) { // 3 para color favorito
    return pregunta ?? 'NoColor';

  } else if (tipoRespuesta == 4) { // 4 para canción favorita
    return pregunta ?? 'NoCanción';

  } else if (tipoRespuesta == 5) { // 5 para número aleatorio
    try {return int.parse(pregunta ?? 'NoNumero');
    } catch (e) {return 0;}

  } else if (tipoRespuesta == 6) { // 6 para comida favorita
    return pregunta ?? 'NoComida';

  } else if (tipoRespuesta == 7) { // 7 para juego favorito
    return pregunta ?? 'NoJuego';

  } else if (tipoRespuesta == 8) { // 8 para flor favorita
    return pregunta ?? 'NoFlor';

  } else if (tipoRespuesta == 9) { // 9 para animal favorito
    return pregunta ?? 'NoAnimal';

  } else {
    return pregunta ?? '';
  }
}

String obtenerPersonajeLOL(int puntos) {
  if (puntos >= 0 && puntos <= 10) {
    return "Ashe";
  } else if (puntos > 10 && puntos <= 20) {
    return "Garen";
  } else if (puntos > 20 && puntos <= 30) {
    return "Ahri";
  } else {
    return "No se pudo determinar el personaje";
  }
}

String obtenerPersonajeAT(int puntos) {
  if (puntos >= 0 && puntos <= 10) {
    return "Dulce Princesa";
  } else if (puntos > 10 && puntos <= 20) {
    return "Finn el Humano";
  } else if (puntos > 20 && puntos <= 30) {
    return "Jake el perro";
  } else {
    return "No se pudo determinar el personaje";
  }
}

String obtenerPersonajeSU(int puntos) {
  if (puntos >= 0 && puntos <= 10) {
    return "Steven Universe";
  } else if (puntos > 10 && puntos <= 20) {
    return "Rose Cuarzo";
  } else if (puntos > 20 && puntos <= 30) {
    return "Perla";
  } else {
    return "No se pudo determinar el personaje";
  }
}