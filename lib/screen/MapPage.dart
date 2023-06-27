import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MyGMap extends StatefulWidget {
  @override
  _MyGMapState createState() => _MyGMapState();
}

class _MyGMapState extends State<MyGMap> {
  late GoogleMapController mapController;
  LocationData? currentLocation;

  final LatLng initialPosition = LatLng(37.7749, -122.4194);
  final Location location = Location();

  @override
  void initState() {
    super.initState();
    _requestLocationPermission();
    _getLocation();
  }

  Future<void> _requestLocationPermission() async {
    final hasPermission = await location.requestPermission();
    if (hasPermission != PermissionStatus.granted) {
      print('Location permission not granted');
    }
  }

  Future<void> _getLocation() async {
    try {
      final locData = await location.getLocation();
      setState(() {
        currentLocation = locData;
      });
    } catch (error) {
      print('Error getting location: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map Example'),
      ),
      body: GoogleMap(
        onMapCreated: (controller) {
          mapController = controller;
        },
        initialCameraPosition: CameraPosition(
          target: initialPosition,
          zoom: 12.0,
        ),
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
        markers: _buildMarkers(),
      ),
    );
  }

  Set<Marker> _buildMarkers() {
    final markers = Set<Marker>();
    if (currentLocation != null) {
      markers.add(
        Marker(
          markerId: MarkerId('currentLocation'),
          position: LatLng(currentLocation!.latitude!, currentLocation!.longitude!),
        ),
      );
    }
    return markers;
  }
}

void main() {
  runApp(MaterialApp(
    home: MyGMap(),
  ));
}
