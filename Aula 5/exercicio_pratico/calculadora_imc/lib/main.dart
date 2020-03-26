import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
        home: Scaffold(
      body: Column(
        children: <Widget>[Formulario()],
      ),
      appBar: AppBar(title: Text('Aula 5')),
    )));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}    

TextEditingController _campoNome = TextEditingController();
TextEditingController _campoTelefone = TextEditingController();
TextEditingController _campoSexo = TextEditingController();
TextEditingController _campoPeso = TextEditingController();
TextEditingController _campoAltura = TextEditingController();

class Formulario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      FormItem('Nome', Icon(Icons.person), _campoNome),
      FormItem('Telefone', Icon(Icons.phone), _campoTelefone),
      FormItem('Sexo', Icon(Icons.info), _campoSexo),
      FormItem('Peso', Icon(Icons.info), _campoPeso),
      FormItem('Altura', Icon(Icons.info), _campoAltura),
      BotaoEnviar()
    ]);
  }
}

class FormItem extends StatelessWidget {
  String label;
  Icon icon;
  TextEditingController controller;

  FormItem(this.label, this.icon, this.controller);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: TextField(
          controller: this.controller,
          style: TextStyle(
            fontSize: 24.0,
          ),
          decoration: InputDecoration(labelText: label, icon: this.icon),
          keyboardType: TextInputType.text,
        ));
  }
}

class BotaoEnviar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text("Enviar",
            style: TextStyle(color: Colors.white, fontSize: 20.0)),
        color: Colors.blue,
        highlightColor: Colors.blue[50],
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialogo();
              });
        });
  }
}

class Dialogo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Text('Bem-vindo'),
        content: IMCResult.getResult(),
        actions: <Widget>[
          FlatButton(
            child: new Text('Fechar'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ]);
  }
}

class IMCResult {


  static Text getResult(){
      final String nome = _campoNome.text;
      final String telefone = _campoTelefone.text;
      final String sexo = _campoSexo.text;
      final double peso = double.parse(_campoPeso.text);
      final double altura = double.parse(_campoAltura.text);
      final double IMCvalue = peso/(altura*altura);

      final String message = 'Nome: $nome' + '\n' + 'Telefone: $telefone' + '\n' + 'Sexo: $sexo' + '\n' + 'IMC: $IMCvalue';

      return Text(message);
  }

}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}