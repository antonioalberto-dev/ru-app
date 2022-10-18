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
      title: 'Meu RU',
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'Meu RU'),
      debugShowCheckedModeBanner: false,
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
  double _desjejum = 0;
  double _almoco = 0;
  double _jantar = 0;
  double _saldoAtual = 10.46;
  double saldoFixo = 10.46;

  void _addDesjejum() {
    setState(() {
      _desjejum++;
      _saldoAtual -= 0.6;
    });
  }

  void _addAlmoco() {
    setState(() {
      _almoco++;
      _saldoAtual -= 1.38;
    });
  }

  void _addJantar() {
    setState(() {
      _jantar++;
      _saldoAtual -= 1.40;
    });
  }

  void _removeDesjejum() {
    setState(() {
      _desjejum--;
      _saldoAtual += 0.6;
    });
  }

  void _removeAlmoco() {
    setState(() {
      _almoco--;
      _saldoAtual += 1.38;
    });
  }

  void _removeJantar() {
    setState(() {
      _jantar--;
      _saldoAtual += 1.40;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Column(
              children: [
                Text(
                  'Saldo',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  'R\$ ${_saldoAtual.toStringAsFixed(2).replaceAll('.', ',')}',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 20, left: 10, right: 10),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Icon(Icons.people, size: 20),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Antonio Barbosa'),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: const [
                      Icon(Icons.book, size: 20),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Engenharia de Software'),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.food_bank),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 80,
                      child: Text(
                        'Desjejum',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        if (_saldoAtual > 0.60) _addDesjejum();
                      },
                      icon: const Icon(Icons.add_circle),
                      color: const Color.fromRGBO(32, 183, 140, 1),
                    ),
                    Text(_desjejum.toInt().toString()),
                    IconButton(
                      onPressed: () {
                        if (_desjejum > 0 && _saldoAtual <= saldoFixo)
                          _removeDesjejum();
                      },
                      icon: const Icon(Icons.remove_circle),
                      color: Colors.red,
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.food_bank),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 80,
                      child: Text(
                        'Almoço',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        if (_saldoAtual > 1.38) _addAlmoco();
                      },
                      icon: const Icon(Icons.add_circle),
                      color: const Color.fromRGBO(32, 183, 140, 1),
                    ),
                    Text(_almoco.toInt().toString()),
                    IconButton(
                      onPressed: () {
                        if (_almoco > 0 && _saldoAtual <= saldoFixo)
                          _removeAlmoco();
                      },
                      icon: const Icon(Icons.remove_circle),
                      color: Colors.red,
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.food_bank),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 80,
                      child: Text(
                        'Jantar',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        if (_saldoAtual > 1.40) _addJantar();
                      },
                      icon: const Icon(Icons.add_circle),
                      color: const Color.fromRGBO(32, 183, 140, 1),
                    ),
                    Text(_jantar.toInt().toString()),
                    IconButton(
                      onPressed: () {
                        if (_jantar > 0 && _saldoAtual <= saldoFixo)
                          _removeJantar();
                      },
                      icon: const Icon(Icons.remove_circle),
                      color: Colors.red,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
