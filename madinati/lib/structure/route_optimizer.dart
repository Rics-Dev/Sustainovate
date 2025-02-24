import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latlong2/latlong.dart';
import 'package:madinati/structure/popups/routepopup.dart';
import 'package:url_launcher/url_launcher.dart';

class RouteOptimizer extends StatefulWidget {
  const RouteOptimizer({super.key});

  @override
  State<RouteOptimizer> createState() => _RouteOptimizerState();
}

class _RouteOptimizerState extends State<RouteOptimizer> {
  final TextEditingController _startLocationController = TextEditingController();
  final TextEditingController _destinationController = TextEditingController();

  // Default map center (you can adjust this to your preferred location)
  final LatLng _defaultCenter = LatLng(31.9539, 35.9106); // Amman, Jordan (example)

  @override
  void dispose() {
    _startLocationController.dispose();
    _destinationController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('logo.svg', height: 30),
          SizedBox(height:MediaQuery.of(context).size.height*0.06),
          // Replace the empty container with FlutterMap
          Container(
            height: MediaQuery.of(context).size.width * 0.94,
            width: MediaQuery.of(context).size.width * 0.94,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: FlutterMap(
              options: MapOptions(
                initialCenter: _defaultCenter,
                initialZoom: 13.0,
                interactionOptions: InteractionOptions(
                  flags: InteractiveFlag.all,
                ),
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.madinati',
                  maxZoom: 19,
                ),
                RichAttributionWidget(
                  attributions: [
                    TextSourceAttribution(
                      'OpenStreetMap contributors',
                      onTap: () => launchUrl(
                        Uri.parse('https://openstreetmap.org/copyright'),
                        mode: LaunchMode.externalApplication,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.03,
              right: MediaQuery.of(context).size.width * 0.03,
              top: 15,
            ),
            child: TextField(
              controller: _startLocationController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Your Location',
                labelText: 'Enter Your Location',
                prefixIcon: Icon(Icons.location_on),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.03,
              right: MediaQuery.of(context).size.width * 0.03,
              top: 10,
            ),
            child: TextField(
              controller: _destinationController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Your Destination',
                labelText: 'Enter Your Destination',
                prefixIcon: Icon(Icons.flag),
              ),
            ),
          ),

          SizedBox(height: 15),

          Container(
            width: MediaQuery.of(context).size.width * 0.94,
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return OptionsPopup(); // Show the popup widget
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(5, 67, 228, 1),
                alignment: Alignment.center,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search, size: 23, color: Colors.white),
                  SizedBox(width: 20),
                  Text(
                    "Find Route",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}