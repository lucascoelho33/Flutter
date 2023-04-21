import 'package:flutter/material.dart';

import 'package:sqflite/sqflite.dart';

import 'package:path/path.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  late int idContato;

  _openBanco() async {
    var dataBasePath = await getDatabasesPath();
    String path = join(dataBasePath, 'banco.db');
    var bd = await openDatabase(path, version: 1,
    onCreate: (db, versaoRecente) async{
      String sql = "CREATE TABLE contatos (id INTEGER PRIMARY KEY AUTOINCREMENT,nome VARCHAR)";
      await db.execute(sql);
    });
    print('Banco: ' + bd.isOpen.toString());
    return bd;
  }

  _salvar() async {
    Database db = await _openBanco();
    Map<String, dynamic> dadosContato = {
      'nome': 'Dalila Natanne',
    };
    setState(() async {
      idContato = await db.insert('contatos',
      dadosContato);
    });

    print(idContato);
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold();
  }
}
