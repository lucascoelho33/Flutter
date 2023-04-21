import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'APP Teste'),
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

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Container(
                  width: 200,
                  height: 100,
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  color: Colors.green,
                ),
                SizedBox(width: 50),
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.red,
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: 450,
              height: 80,
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.orange,
                ),
                SizedBox(width: 40),
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.purple,
                ),
                SizedBox(width: 40),
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.yellow,
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
