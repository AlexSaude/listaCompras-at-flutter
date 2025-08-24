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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
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
                   mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text('Lista de compras personlizada'),
                     Text(  '1 - Adicionar item para a lista'),
                       Text('2 - consultar a lista'),
                       Text('3 - excluir item da lista'),
                       Text('4 - sair'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,),
            (_counter >4 ? Text('opção inválida'): Text('opção válida')),
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

