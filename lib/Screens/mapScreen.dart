import 'package:appdec15/Screens/main_drawer.dart';
import 'package:appdec15/Screens/map_bottom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  //Set<Marker> _markers = HashSet<Marker>();
  final CameraPosition _initialPosition = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962), zoom: 12);
  GoogleMapController _mapController;
  //BitmapDescriptor _markerIcon;
  // @override
  // void initState() {
  //   super.initState();
  //   _setMarkerIcon();
  // }

  // void _setMarkerIcon() async {
  //   _markerIcon = await BitmapDescriptor.fromAssetImage(
  //       ImageConfiguration(), 'assets/images/Promotions placeholder.png');
  // }

  // void _onMapCreated(GoogleMapController controller) {
  //   _mapController = controller;
  //   setState(() {
  //     _markers.add(
  //       Marker(
  //         markerId: MarkerId('0'),
  //         position: LatLng(37.42796133580664, -122.085749655962),
  //         infoWindow: InfoWindow(title: "Newyork"),
  //         icon: _markerIcon,
  //       ),
  //     );
  //   });
  // }
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MainDrawer(),
      body: Stack(
        children: [
          GoogleMap(
            //   onMapCreated: _onMapCreated,
            initialCameraPosition: _initialPosition,
            mapType: MapType.normal,
            //    markers: _markers,
          ),
          // Marker code is written you can add the markers according to your requirement also set the location coordinates according to your need

          Positioned(
              left: 15,
              top: 30,
              child: GestureDetector(
                child: Image(
                  image: AssetImage('assets/images/Ham menu.png'),
                  width: 40.0,
                  height: 40.0,
                ),
                onTap: () => scaffoldKey.currentState.openDrawer(),
              )),
          Positioned(
              right: 15,
              top: 30,
              child: GestureDetector(
                  child: Image(
                    image: AssetImage('assets/images/Qr code.png'),
                    width: 40.0,
                    height: 40.0,
                  ),
                  onTap: () {})),
          Positioned(
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Container(
                alignment: Alignment.bottomCenter,
                height: 180.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Promotions',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 5.0),
                        Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        height: 40.0,
                        width: double.infinity,
                        color: Colors.lightBlueAccent[100],
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Enter Location',
                                style: TextStyle(color: Colors.white),
                              ),
                              Divider(
                                thickness: 2.0,
                                color: Colors.white,
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/images/Filter white.png'),
                                width: 25.0,
                                height: 25.0,
                              )
                              // TextFormField(
                              //   decoration: InputDecoration(
                              //     hintText: 'Enter Location',
                              //     hintStyle: TextStyle(color: Colors.black54),
                              //     prefixIcon: Icon(
                              //       Icons.location_city,
                              //       //color: Colors.black54,
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        MapBottomWidgets(
                          image: Image(
                            image: AssetImage(
                                'assets/images/Experiences white.png'),
                            width: 25.0,
                            height: 25.0,
                          ),
                          text: Text(
                            'Experiences',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          ),
                        ),
                        MapBottomWidgets(
                          image: Image(
                            image: AssetImage(
                                'assets/images/Promotions white.png'),
                            width: 25.0,
                            height: 25.0,
                          ),
                          text: Text(
                            'Promotions',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          ),
                        ),
                        MapBottomWidgets(
                          image: Image(
                            image:
                                AssetImage('assets/images/Car Park White.png'),
                            width: 25.0,
                            height: 25.0,
                          ),
                          text: Text(
                            'Parking',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
