import 'package:flutter/material.dart';
import 'qoute.dart';

class QouteCard extends StatelessWidget {
  final Qoute qoute;
  final Function()? delete;
  // ignore: use_key_in_widget_constructors
  const QouteCard({required this.qoute, required this.delete});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                qoute.text,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 6.0),
              Text(
                qoute.author,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800],
                ),
              ),
              const SizedBox(height: 8.0),
              TextButton.icon(
                onPressed: delete,
                label: const Text('Delete qoute'),
                icon: const Icon(Icons.delete),
              ),
            ],
          ),
        ));
  }
}
