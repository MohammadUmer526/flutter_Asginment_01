import 'package:assignment_01/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Home'),
            Image.asset('assets/image.jpeg'), // Replace with your image path
            ElevatedButton(
              onPressed: () {
                Provider.of<ButtonTextModel>(context, listen: false)
                    .changeButtonText();
                Navigator.pushNamed(context, '/page2');
              },
              child: Text(Provider.of<ButtonTextModel>(context).buttonText),
            ),
          ],
        ),
      ),
    );
  }
}
