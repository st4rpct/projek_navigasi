import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layar Keempat"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Kembali"))
          ],
        ),
      ),
    );
  }
}
