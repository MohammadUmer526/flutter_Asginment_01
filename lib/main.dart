import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'page1.dart';
import 'page2.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ButtonTextModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Page1(),
        '/page2': (context) => Page2(),
      },
    );
  }
}

class ButtonTextModel with ChangeNotifier {
  String buttonText = 'Go to Page 2';

  void changeButtonText() {
    buttonText = 'Go to FItness Page';
    notifyListeners();
  }
}
