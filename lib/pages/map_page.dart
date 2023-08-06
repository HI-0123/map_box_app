import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});
  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: MapWidget(
        resourceOptions: ResourceOptions(
          accessToken: FlutterConfig.get('PUBLIC_KEY'),
        ),
      ),
    ));
  }
}
