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

  void _incrementCounter() {
    setState(() {
      _desjejum += 0.6;
      _almoco += 1.38;
      _jantar += 1.40;
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
              children: const [
                Text(
                  'Saldo',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  'R\$ 100,46',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Card(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Text('DEPOSITAR'),
                  ),
                  color: Colors.green,
                ),
                SizedBox(
                  width: 120,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Text('SACAR'),
                    ),
                    color: Colors.orange,
                  ),
                ),
              ],
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
                      onPressed: () {},
                      icon: Icon(Icons.add_circle),
                      color: Colors.green,
                    ),
                    Text('1'),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove_circle),
                      color: Colors.red,
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.food_bank),
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
                      onPressed: () {},
                      icon: Icon(Icons.add_circle),
                      color: Colors.green,
                    ),
                    Text('1'),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove_circle),
                      color: Colors.red,
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.food_bank),
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
                      onPressed: () {},
                      icon: Icon(Icons.add_circle),
                      color: Colors.green,
                    ),
                    Text('1'),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove_circle),
                      color: Colors.red,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
