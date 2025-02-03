import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//ChangeNotifierProvider: Envuelve la aplicación y proporciona el estado a los widgets.
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Counter(),
    );
  }
}
//CounterProvider: Clase que gestiona el estado del contador y notifica cambios.
class CounterProvider extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    if (_counter > 0) {
      _counter--;
      notifyListeners();
    }
  }
  void reset() {
    _counter = 0;
    notifyListeners();
  }
}
class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejemplo de  Gestion de estado Provider')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador:', style: TextStyle(fontSize: 20)),
            Consumer<CounterProvider>(
              builder: (context, counterProvider, child) {
                return Text(
                  '${counterProvider.counter}',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                );
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () => context.read<CounterProvider>().decrement(),
                  child: Icon(Icons.remove),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () => context.read<CounterProvider>().increment(),
                  child: Icon(Icons.add),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.read<CounterProvider>().reset(),
              child: Text("Restablecer"),
            ),
          ],
        ),
      ),
    );
  }
}
