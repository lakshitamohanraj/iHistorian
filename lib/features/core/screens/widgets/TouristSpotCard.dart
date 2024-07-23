// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../../entity/TouristSpot.dart';
//
// class TouristSpotCard extends StatelessWidget {
//   final TouristSpot touristSpot; // Replace with your data model
//
//   const TouristSpotCard({Key? key, required this.touristSpot}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         children: [
//           Image.network(touristSpot.imageUrl), // Replace with image handling
//           Text(touristSpot.name),
//           Text(touristSpot.location),
//           Text('Narrator: ${touristSpot.narrator}'),
//         ],
//       ),
//     );
//   }
// }