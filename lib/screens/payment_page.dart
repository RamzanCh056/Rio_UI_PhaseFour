import 'package:flutter/material.dart';
import 'package:rio_ui_screens/screens/feedback_page.dart';
import 'package:rio_ui_screens/screens/start_ride_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(children: [
          Row(
            children: [
              Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(34),
                        bottomRight: Radius.circular(34))),
                child: Center(
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => StartRide()));
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 90,
                      ),
                      Text(
                        'Fare Payment',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              child: Text(
            'Total Fare',
            style: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
                fontSize: 34),
          )),
          SizedBox(
            height: 20,
          ),
          Container(
              child: Text(
            'Rupee',
            style: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
                fontSize: 22),
          )),
          SizedBox(
            height: 5,
          ),
          Container(
              child: Text(
            '150',
            style: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
                fontSize: 45),
          )),
          SizedBox(
            height: 40,
          ),
          Container(
              child: Text(
            'Enter Discount Code!',
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.indigo),
                borderRadius: BorderRadius.circular(14),
              )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: MaterialButton(
              color: Colors.indigo,
              padding: EdgeInsets.only(left: 40, right: 40),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FeedBack()));
              },
              child: Text(
                'Done!',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
