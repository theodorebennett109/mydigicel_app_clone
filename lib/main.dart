import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(const MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0), // Increase preferredSize height to accommodate the app bar content
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
      title:
          SvgPicture.asset('assets/mydigicel.svg',
            height: 20.0,
          ),

      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_none_rounded,
            color: Color(0xFFB0B0B0),
            size: 20.0,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.location_on_outlined,
            color: Color(0xFFB0B0B0),
            size: 20.0,
          ),
        ),
        Image.asset(
          'assets/chat.jpg', // Changed the asset path to 'chat.jpg'
          height: 36.0,
          width: 36.0,
        ),
      ],
      backgroundColor: Colors.white,
    );
  }
}
