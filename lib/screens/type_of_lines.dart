import 'package:flutter/material.dart';
import 'package:rio_ui_screens/screens/lines_routes.dart';
import 'package:rio_ui_screens/screens/stations.dart';

class TransportLines extends StatefulWidget {
  const TransportLines({Key? key}) : super(key: key);

  @override
  _TransportLinesState createState() => _TransportLinesState();
}

class _TransportLinesState extends State<TransportLines> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
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
                        SizedBox(
                          width: 20,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Stations()));
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          'PUBLIC TRANSPORT\n   LINES IN LAHORE',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 100,
              width: 130,
              // height: MediaQuery.of(context).size.height - 600,
              // color: Colors.white,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("images/train.jpeg"),
                fit: BoxFit.fill,
              )),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TrainRoutes()));
                    },
                    child: Text(
                      "ORANGE LINE\nMETRO TRAIN",
                      style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                    ))
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 100,
              width: 130,
              // height: MediaQuery.of(context).size.height - 600,
              // color: Colors.white,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("images/metro.png"),
                fit: BoxFit.fill,
              )),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "METRO BUS\n   LAHORE",
                  style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                )
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 100,
              width: 130,
              // height: MediaQuery.of(context).size.height - 600,
              // color: Colors.white,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("images/metro.png"),
                fit: BoxFit.fill,
              )),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "SPEEDO FEEDER\nROUTER LAHORE",
                  style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
