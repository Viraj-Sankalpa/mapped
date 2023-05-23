import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;
  Set<Marker> markers = {};

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _addMarker(LatLng latLng) {
    setState(() {
      markers.add(
        Marker(
          markerId: MarkerId(latLng.toString()),
          position: latLng,
          infoWindow: InfoWindow(
            title: 'New Marker',
            snippet: 'This is a new marker',
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map Screen'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(37.7749, -122.4194),
          zoom: 12,
        ),
        markers: markers,
        onTap: _addMarker,
      ),
    );
  }
}
