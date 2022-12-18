import 'package:demo1/store/counter/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CounterPage extends StatelessWidget {
  final Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Flutter and MobX'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Counter',
                style: TextStyle(fontSize: 30.0),
              ),
              Observer(
                builder: (_) =>
                    Text('${counter.value}', style: TextStyle(fontSize: 42.0)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    child: Text('+'),
                    onPressed: counter.increment,
                  ),
                  ElevatedButton(
                    child: Text('-'),
                    onPressed: counter.decrement,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
