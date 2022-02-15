import 'package:exemplo40/nomesCadastrados.dart';
import 'package:exemplo40/paginicio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  //fazendo a inicializacao do firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //acho q estamos falando qual a cor padrao do APP... no caso AZUl
        primarySwatch: Colors.blue,
      ),
      //aqui nos estamos dizendo QUAL a PAG inicial... no caso a PAG inicial
      //vai ser o '/' barra... q em breve vamos associar uma funcao/classe
      //ao barra
      initialRoute: '/',
      //criando as rotas... pois assim poderemos NAVEGAR ENTRE TELAS
      routes: {
        //TALVEZ COMENTAR O CONST //
        //
        //aqui estamos dizendo q quando chamar o '/' barra, nos vamos
        //levar a pessoa para a CLASSE/FUNCAO inicio(), e o q estiver
        //dentro da CLASSE/FUNCAO inicio() irá aparecer na tela do app
        '/': (_) => const inicio(),
        //ao clicarmos em algum botao/container q chame a classe/funcao
        //NOMESCAD nos vamos levar o usuario para a tela da CLASSE/FUNCAO
        //nomesCad(), e assim o q tiver codificado nessa tela ira aparecer
        //para o usuario
        '/nomesCad': (_) => const nomesCad(),
      },
      //como nos definimos ali em cima q INITIALROUTE: '/', entao
      //o HOME: INICIO() nao e nescessario...
      //home: inicio(),
    );
  }
}
