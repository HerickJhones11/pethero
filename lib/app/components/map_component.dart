import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapComponent extends StatefulWidget {
  final double size;

  const MapComponent({ Key? key, this.size = 0 }) : super(key: key);

  @override
  _MapComponentState createState() => _MapComponentState();
}

class _MapComponentState extends State<MapComponent> {
  GoogleMapController? mapController;
  Set<Marker> markers = new Set<Marker>();
  double lat = 45.521563;
  double long = -122.677433;
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(widget.size*0.01)),
        child: SizedBox(
            width: widget.size,
            height: widget.size*0.38,
            child: GoogleMap(
              
              onMapCreated: _onMapCreated,
              onCameraMove: (data) {
                print(data);
              },
              onTap: (position) {
                print(position);
              },
              initialCameraPosition: CameraPosition(
                target: LatLng(lat,long),
                zoom: 11.0
              ),
              markers: markers,
            ),
          ),
      ),
    );
  }
}


// Column(
//       children: [
//         // TextField(
//         //   onChanged: (val) {
//         //     lat = -22.71014448;
//         //     long = -48.0747667;
//         //     LatLng position = LatLng(lat, long);
//         //     mapController!.moveCamera(CameraUpdate.newLatLng(position));
//         //     final Marker marker = Marker(
//         //       markerId: new MarkerId("123456"),
//         //       position: position,
//         //       infoWindow: InfoWindow(
//         //         title: "Casa do balta",
//         //         snippet: 'Piricicaba/SP'
//         //       )
//         //     );
//         //     setState(() {
//         //       markers.add(marker);
//         //     });
//         //   },
//         // ),
//         SizedBox(
//           width: widget.size,
//           height: widget.size*0.38,
//           child: GoogleMap(
            
//             onMapCreated: _onMapCreated,
//             onCameraMove: (data) {
//               print(data);
//             },
//             onTap: (position) {
//               print(position);
//             },
//             initialCameraPosition: CameraPosition(
//               target: LatLng(lat,long),
//               zoom: 11.0
//             ),
//             markers: markers,
//           ),
//         ),
//       ],
//     );