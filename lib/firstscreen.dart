import 'package:flutter/material.dart';
import 'package:projek_navigasi/fourthscreen.dart';
import 'package:projek_navigasi/secondscreen.dart';
import 'package:projek_navigasi/thirdscreen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  Future<void> _navigateScreen(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => ThirdScreen()));

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$result')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layar Pertama"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SecondScreen(data: "palcomtech palembang")));
                },
                child: Text("Menuju Ke Layar Kedua")),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  _navigateScreen(context);
                },
                child: Text("Menuju Ke Layar Ketiga")),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/empat');
                },
                child: Text("Menuju Ke Layar Keempat")),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/lima',
                      arguments: 'Hai Apa Kabar ?');
                },
                child: Text("Menuju Ke Layar Kelima"))
          ],
        ),
      ),
    );
  }
}
