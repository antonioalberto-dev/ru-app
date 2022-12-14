import 'package:flutter/material.dart';

class Ru extends StatefulWidget {
  const Ru({Key? key}) : super(key: key);

  @override
  State<Ru> createState() => _RuState();
}

class _RuState extends State<Ru> {
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
        title: const Text('Meu RU'),
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset('assets/images/icone.png'),
        ),
        backgroundColor: const Color.fromARGB(255, 21, 139, 139),
        // centerTitle: true,
        elevation: 1,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'Saldo',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'R\$ ${_saldoAtual.toStringAsFixed(2).replaceAll('.', ',')}',
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Card(
                      color: const Color.fromARGB(255, 21, 139, 139),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            'Deposito',
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.monetization_on,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Card(
                      color: Colors.deepOrange,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            'Saque',
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.outbond_rounded,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 25, bottom: 20, left: 10, right: 10),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.people, size: 20),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Ant??nio Barbosa'),
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
                        Text(
                          'Engenharia de Software',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 2,
                child: ListTile(
                  leading: const Icon(Icons.coffee),
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
                        color: const Color.fromARGB(255, 30, 155, 155),
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
                elevation: 2,
                child: ListTile(
                  leading: const Icon(Icons.egg_alt_outlined),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 80,
                        child: Text(
                          'Almo??o',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          if (_saldoAtual > 1.38) _addAlmoco();
                        },
                        icon: const Icon(Icons.add_circle),
                        color: const Color.fromARGB(255, 30, 155, 155),
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
                elevation: 2,
                child: ListTile(
                  leading: const Icon(
                    Icons.flatware,
                  ),
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
                        color: const Color.fromARGB(255, 30, 155, 155),
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
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
