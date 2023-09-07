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
  String firstName = "Theodore";
  String phoneNumber = "1876""2818357";
  double callCredit = 10.76;
  String expiryDate = '28/11/2023';

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
      body: Container(
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

            // User Container
            Container(
              padding: const EdgeInsets.all(8.0),
              margin: EdgeInsets.symmetric(vertical: 12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Row 1 of Card with username
                  Container(
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.account_circle_outlined,
                          size: 60.0,
                          color: Color(0xFFa8a4c3),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "$firstName ...",
                              style: TextStyle(
                                color: Color(0xFF2c2d67),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 0.0),
                              child: Text(
                                phoneNumber,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0,
                                  color: Color(0xFFa8a4c3),
                                ),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Prepaid",
                              style: TextStyle(
                                color: Color(0xFF2c2d67),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 0.0),
                              child: Text(
                                "One Rate",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFa8a4c3),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  // Credit
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("$callCredit JMD",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                        color: Color(0xFF2c2d67),
                      ),
                      )
                    ],
                  ),
                  // Expires
                  Container(
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Expires On $expiryDate",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            color: Color(0xFFa8a4c3),
                          ),
                        )
                      ],
                    ),

                  ),
                  // Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Activity Button
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            // Add your onTap action here
                          },
                          child: Container(
                            height: 36.0,
                            padding: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.purple,Colors.red]
                              ),
                              // Set your desired background color here
                              borderRadius: BorderRadius.circular(20.0), // Set the desired border radius
                            ),

                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white, // Set your desired background color here
                                borderRadius: BorderRadius.circular(20.0), // Set the desired border radius
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Activity',
                                    style: TextStyle(
                                      color: Color(0xFF2c2d67), // Set the text color to white
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 15.0), // Add some space between buttons
                      //Top up Button
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            // Add your onTap action here
                          },
                          child: Container(
                            height: 36.0,
                            padding: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.purple,Colors.red]
                              ),
                              // Set your desired background color here
                              borderRadius: BorderRadius.circular(20.0), // Set the desired border radius
                            ),

                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white, // Set your desired background color here
                                borderRadius: BorderRadius.circular(20.0), // Set the desired border radius
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Top up',
                                    style: TextStyle(
                                      color: Color(0xFF2c2d67), // Set the text color to white
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),


                    ],
                  )

                ],
              ),
            )
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
