import 'package:flutter/material.dart';

void main() {
//  runApp(const MyApp());
}

//class MyApp extends StatelessWidget {
//  const MyApp({super.key});

class ListViewHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
      ],
    );
  }
//}
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
   setState(() {
      
     _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    var child;
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: ListView(
        
          child prototypeItem: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Você apertou o botão várias vezes:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
