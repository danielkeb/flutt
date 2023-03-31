import 'package:bb/qoute_card.dart';
import 'package:flutter/material.dart';
import 'qoute.dart';

void main() {
  runApp(const MaterialApp(home: MyWidget()));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<Qoute> qoutes = [
    Qoute(text: 'I have nothing to declare except my genius', author: 'Daniel'),
    Qoute(text: 'Be your self everyone is already', author: 'somebody'),
    Qoute(text: 'The truth is rarely pure and never simple', author: 'john'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[0],
      appBar: AppBar(
        title: const Text('Awesome qoutes'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: qoutes
            .map((qoute) => QouteCard(
                qoute: qoute,
                delete: () {
                  setState(() {
                    qoutes.remove(qoute);
                  });
                }))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}
