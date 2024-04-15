import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      body: Center(
          child: Container(
              color: Color.fromARGB(255, 236, 235, 148),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.orange,
                              width: 10,
                            ),
                          ),
                          width: 180,
                          height: 180,
                          alignment: Alignment.center,
                          child: Text('R',
                              style: TextStyle(
                                fontSize: 120,
                                color: Colors.orange,
                              )),
                        ),
                      ],
                    ),
                    Text(
                      'Welcome to Flutter',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 138, 63, 57)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Hello Mundo',
                      style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 4, 94, 168)),
                    ),
                    Expanded(
                        child: FittedBox(
                      child: FlutterLogo(),
                    )),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.red,
                        ),
                        Container(
                          width: 90,
                          height: 90,
                          color: Colors.green,
                        ),
                        Container(
                          width: 80,
                          height: 80,
                          color: Colors.blue,
                        ),
                      ],
                    )
                  ]))),
    );
  }
}
