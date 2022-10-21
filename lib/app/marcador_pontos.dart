import 'package:flutter/material.dart';

class MarcadorPontos extends StatefulWidget {
  const MarcadorPontos({Key? key}) : super(key: key);

  @override
  State<MarcadorPontos> createState() => _MarcadorPontosState();
}

class _MarcadorPontosState extends State<MarcadorPontos> {
  int mandante = 0;
  int visitante = 0;

  void addPonto(String time) {
    setState(() {
      if (time == 'mandante') {
        mandante++;
      } else {
        visitante++;
      }
    });
  }

  void removePonto(String time) {
    setState(() {
      if (time == 'mandante') {
        mandante--;
      } else {
        visitante--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.50,
            decoration: const BoxDecoration(
              color: Colors.orange,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () => addPonto('mandante'),
                  icon: const Icon(
                    Icons.add_circle,
                    color: Colors.white,
                  ),
                  iconSize: 40,
                ),
                Text(
                  '$mandante',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 70,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (mandante > 0) removePonto('mandante');
                  },
                  icon: const Icon(
                    Icons.remove_circle,
                    color: Colors.white,
                  ),
                  iconSize: 40,
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.50,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () => addPonto('visitante'),
                  icon: const Icon(
                    Icons.add_circle,
                    color: Colors.white,
                  ),
                  iconSize: 40,
                ),
                Text(
                  '$visitante',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 70,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (visitante > 0) removePonto('visitante');
                  },
                  icon: const Icon(
                    Icons.remove_circle,
                    color: Colors.white,
                  ),
                  iconSize: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
