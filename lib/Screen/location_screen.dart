// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:latlong2/latlong.dart';

// class OurLocationPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Our Location'),
//       ),
//       body: FlutterMap(
//         options: MapOptions(
//           center: LatLng(4.1755, 73.5093), // Coordinates for Male, Maldives
//           zoom: 15.0,
//         ),
//         children: [
//           TileLayer(
//             urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
//             subdomains: ['a', 'b', 'c'],
//             attributionBuilder: (_) {
//               return Text('© OpenStreetMap contributors');
//             },
//           ),
//           MarkerLayer(
//             markers: [
//               Marker(
//                 width: 80.0,
//                 height: 80.0,
//                 point: LatLng(4.1755, 73.5093), // Coordinates for Male, Maldives
//                 builder: (ctx) => Container(
//                   child: Icon(
//                     Icons.location_on,
//                     color: Colors.red,
//                     size: 40.0,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
