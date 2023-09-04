import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: DigicelAppBar(),
      ),
    );
  }
}

class DigicelAppBar extends StatelessWidget {
  const DigicelAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(


      title: Text('MyDigicel',
        style: TextStyle(
          color: Color(0xFFD6092E),

          letterSpacing: 0.5,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,

        ),
      ),

      backgroundColor: Colors.white,
    );
  }
}
