import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
  String _text = 'Black';
  Color _color = Colors.black;

  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _text,
              style: TextStyle(fontSize: 120, color: _color),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _text = 'Red';
                  _color = Colors.red;
                });
              },
              child: Text('Red', style: TextStyle(fontSize: 60)),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _text = 'Blue';
                  _color = Colors.blue;
                });
              },
              child: Text(
                'Blue',
                style: TextStyle(fontSize: 60),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _text = 'Green';
                  _color = Colors.green;
                });
              },
              child: Text('Green', style: TextStyle(fontSize: 60)),
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
