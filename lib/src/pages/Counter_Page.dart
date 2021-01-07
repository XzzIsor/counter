import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  createState() => CounterPageState();
}

class CounterPageState extends State<CounterPage> {
  final TextStyle _styleText = TextStyle(fontSize: 25, color: Colors.deepPurple);
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Contador'),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Número de taps', style: _styleText),
          Text('$_counter', style: _styleText),
          ],
       ),
      ),
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons() {
    return Row(children: <Widget>[
      SizedBox(width: 25),
      FloatingActionButton(
          onPressed: () => setState(() => _counter = 0),
          child: Icon(Icons.exposure_zero)),
      Expanded(child: SizedBox()), 
      FloatingActionButton(
          onPressed: () => setState(() => _counter++), child: Icon(Icons.add)),
      SizedBox(width: 5.0),
      FloatingActionButton(
          onPressed: () => setState(() => _counter--),
          child: Icon(Icons.remove)),
    ]);
  }
}
