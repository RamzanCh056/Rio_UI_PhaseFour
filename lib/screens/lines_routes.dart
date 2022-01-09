import 'package:flutter/material.dart';
import 'package:rio_ui_screens/screens/type_of_lines.dart';

class TrainRoutes extends StatefulWidget {
  const TrainRoutes({Key? key}) : super(key: key);

  @override
  _TrainRoutesState createState() => _TrainRoutesState();
}

class _TrainRoutesState extends State<TrainRoutes> {
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
                        SizedBox(
                          width: 20,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TransportLines()));
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'ORANGE TRAIN ROUTES\n            IN LAHORE',
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
              height: 80,
            ),
            Container(
              height: 350,
              child: Image.asset(
                'images/map.png',
                fit: BoxFit.cover,
              ),
            ),
          ]),
        ));
  }
}
