import 'package:flutter/material.dart';

void main() {
  runApp(const DemoCard());
}

class DemoSizedBox extends StatelessWidget {
  const DemoSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh SizedBox',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text('Contoh SizedBox'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // kotakUji(Colors.amber),
              // const SizedBox(width: 25, height: 25),
              // SizedBox(width: 100, height: 100, child: kotakUji(Colors.green)),
              // const SizedBox(width: 25, height: 25),
              // kotakUji(Colors.blue),

              kotakUji(Colors.amber),
              const Spacer(flex: 1),
              kotakUji(Colors.green),
              const Spacer(flex: 2),
              kotakUji(Colors.blue),
            ],
          ),
        ),
      ),
    );
  }

  Container kotakUji(Color warna) {
    return Container(
      height: 75,
      width: 75,
      color: warna,
    );
  }
}

class DemoCard extends StatelessWidget {
  const DemoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Card',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Card Demo'),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Card(
            margin: const EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ListTile(
                  leading: Icon(
                    Icons.location_pin,
                    color: Colors.red,
                  ),
                  title: Text(
                    'Taman Nasional Bromo Tengger Semeru',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Jawa Timur, Indonesia'),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.blue),
                        ),
                        child: const Icon(Icons.map),
                      ),
                      const SizedBox(width: 10),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.blue),
                        ),
                        child: const Icon(Icons.phone),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
