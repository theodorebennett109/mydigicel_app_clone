import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(36.0),
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
      // elevation: 0.0,
      title: Row(
        children: [

          SvgPicture.asset(
            'assets/mydigicel.svg',
            height: 20.0,
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_none_rounded,
            color: Color(0xFFB0B0B0),
            size: 20.0,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.location_on_outlined,
            color: Color(0xFFB0B0B0),
            size: 20.0,
          ),
        ),
        Image(image: AssetImage('assets/chat.png'),
        height: 32.0,
          width: 32.0,
        )

      ],
      backgroundColor: Colors.white,
    );
  }
}
