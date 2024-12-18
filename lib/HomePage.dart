import 'package:flutter/material.dart';
import 'package:sportcenter/Services.dart';
import 'package:sportcenter/signin.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  _homeState createState() {
    return _homeState();
  }
}

class _homeState extends State<home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // Logo size remains unchanged
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              child: Image.asset(
                'assets/logo.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'What We Offer',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => services()),);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: Size(
                        MediaQuery.of(context).size.width * 0.4, // 40% of screen width
                        MediaQuery.of(context).size.height * 0.3, // 20% of screen height
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'assets/soccer.jpeg',
                          height: MediaQuery.of(context).size.height * 0.12, // Image height responsive (8% of screen height)
                          width: MediaQuery.of(context).size.width * 0.15,   // Image width responsive (15% of screen width)
                          fit: BoxFit.contain,
                        ),
                        SizedBox(height: 10), // Adjust spacing between image and text
                        Text(
                          'Soccer',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.03, // Text size responsive
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => services()),);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: Size(
                        MediaQuery.of(context).size.width * 0.4, // 40% of screen width
                        MediaQuery.of(context).size.height * 0.3, // 20% of screen height
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'assets/basketball.png',
                          height: MediaQuery.of(context).size.height * 0.12, // Image height responsive (8% of screen height)
                          width: MediaQuery.of(context).size.width * 0.15,   // Image width responsive (15% of screen width)
                          fit: BoxFit.contain,
                        ),
                        SizedBox(height: 10), // Adjust spacing between image and text
                        Text(
                          'Basketball',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.03, // Text size responsive
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => services()),);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery
                      .of(context)
                      .size
                      .width * 0.7, 50), // Button width and height
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  backgroundColor: Colors.grey[500],
                ),
                child: Text(
                  'View All Services',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}