import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(const MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String greetings = "";

  @override
  void initState() {
    super.initState();
    // Set the initial greeting based on the current time
    setGreeting();
  }

  // Function to set the greeting based on the current time
  void setGreeting() {
    final now = DateTime.now();
    final hour = now.hour;

    if (hour >= 6 && hour < 12) {
      setState(() {
        greetings = "Good Morning";
      });
    } else if (hour >= 12 && hour < 18) {
      setState(() {
        greetings = "Good Afternoon";
      });
    } else if (hour >= 18 && hour <= 23) {
      setState(() {
        greetings = "Good Evening";
      });
    } else {
      setState(() {
        greetings = "Good Night";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: DigicelAppBar(),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        child: Column(
          children: [
            Flex(
              direction: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                 Text(
                    greetings,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2c2d67),
                    ),
                  ),

                Spacer(),
               Text(
                    'Manage Accounts',
                    style: TextStyle(
                      color: Color(0xFF2c2d67),
                      decoration: TextDecoration.underline,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}


// AppBar
class DigicelAppBar extends StatelessWidget {
  const DigicelAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      title: SvgPicture.asset(
        'assets/mydigicel.svg',
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
        Container(
          margin: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
          child: Image.asset(
            'assets/chat.jpg',
            height: 36.0,
            width: 36.0,
          ),
        ),
      ],
      backgroundColor: Colors.white,
    );
  }
}
