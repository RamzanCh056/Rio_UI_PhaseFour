import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rio_ui_screens/screens/confirm_driver_page.dart';
import 'package:rio_ui_screens/screens/suggest_route_page.dart';

class SelectRide extends StatefulWidget {
  const SelectRide({Key? key}) : super(key: key);

  @override
  _SelectRideState createState() => _SelectRideState();
}

class _SelectRideState extends State<SelectRide> {
  Completer<GoogleMapController> _controllerGoogleMap = Completer();

  GoogleMapController? newGoogleMapControler;
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            GoogleMap(
                mapType: MapType.normal,
                myLocationButtonEnabled: true,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controllerGoogleMap.complete(controller);
                  newGoogleMapControler = controller;
                }),
            Positioned(
                top: 30,
                left: 20,
                child: Container(
                    height: 60,
                    child: Card(
                      child: IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.indigo,
                        iconSize: 35,
                        onPressed: () {},
                      ),
                    ))),
            Positioned(
                top: 30,
                right: 20,
                child: Container(
                    height: 60,
                    child: Card(
                      child: IconButton(
                        icon: Icon(Icons.notification_add),
                        color: Colors.indigo,
                        iconSize: 35,
                        onPressed: () {},
                      ),
                    ))),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(34),
                          topRight: Radius.circular(34)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 16,
                          //spreadRadius: 0.5,
                          //  offset: Offset(0.7, 0.7),
                        ),
                      ]),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton.icon(
                              icon: Icon(
                                Icons.arrow_back_ios,
                                size: 18,
                              ),
                              label: Text(
                                'Back',
                                style: TextStyle(fontSize: 16),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SuggestRoute()));
                              },
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Selected Ride',
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 70,
                        color: Colors.indigo,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 28, right: 28),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Estimated Time',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Estimated Budget',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '30 Min',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  Text(
                                    'Rs 150',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.drive_eta,
                                  size: 35,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                    'First Rio Pick Up at 11:11 pm\nCurrent Location'),
                                SizedBox(
                                  width: 69,
                                ),
                                CircleAvatar(
                                  radius: 11,
                                  child: Icon(
                                    Icons.circle,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                  backgroundColor: Colors.indigo,
                                )

                                // ListTile(
                                //     leading: Icon(Icons.drive_eta),
                                //     title: Text('First Rio Pick Up at 11:11 pm'),
                                //     subtitle: Text('First Rio Pick Up at 11:11 pm'),
                                //     trailing: CircleAvatar(
                                //       child: Icon(Icons.circle),
                                //       backgroundColor: Colors.white,
                                //     ))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 35,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                    'Drop off at Destination at 12:11 pm\nDestination Location'),
                                SizedBox(
                                  width: 27,
                                ),
                                CircleAvatar(
                                  radius: 14,
                                  child: Text(
                                    'D',
                                    style: TextStyle(
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  backgroundColor: Colors.grey,
                                )

                                // ListTile(
                                //     leading: Icon(Icons.drive_eta),
                                //     title: Text('First Rio Pick Up at 11:11 pm'),
                                //     subtitle: Text('First Rio Pick Up at 11:11 pm'),
                                //     trailing: CircleAvatar(
                                //       child: Icon(Icons.circle),
                                //       backgroundColor: Colors.white,
                                //     ))
                              ],
                            )
                          ],
                        ),
                      ),
                      Divider(
                        height: 30,
                        thickness: 3,
                        color: Colors.black38,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 85, right: 85),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            color: Colors.indigo,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ConfirmDriver()));
                            },
                            child: Text(
                              'Continue',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
