import 'package:flutter/material.dart';
import 'package:rio_ui_screens/screens/further_booking.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({Key? key}) : super(key: key);

  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 150, bottom: 40),
              child: Card(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.star, color: Colors.orange),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.star, color: Colors.orange),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.star, color: Colors.orange),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.star, color: Colors.orange),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Rate our app',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 12, right: 8, top: 8, bottom: 12),
                      child: Text(
                          'Consequat velit qui adipisicing sunt do reprehederit ad laborum tempor'
                          ' ullamo exercitation. Ullamco tempor adipisicing et voluptate '
                          'duis sit esse aliqua esse ex dolore esse. Consequat velit qui adsipising sunt.'),
                    ),
                    MaterialButton(
                      color: Colors.indigo,
                      padding: EdgeInsets.only(left: 40, right: 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FurtherBooking()));
                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Share with your friends!'),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
