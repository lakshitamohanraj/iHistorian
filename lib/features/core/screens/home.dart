import 'package:csi_project/features/core/entity/TouristSpot.dart';
import 'package:csi_project/features/core/screens/widgets/TouristSpotCard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   // final List<TouristSpot> touristSpots;
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore the Beautiful World!'),
      ),
      // body: Column(
      //   children: [
      //     // Search bar
      //     TextField(
      //       decoration: InputDecoration(
      //         hintText: 'Enter your Tourist Spot',
      //       ),
      //     ),
      //     // Explore More cards
      //     Expanded(
      //       child: GridView.builder(
      //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //           crossAxisCount: 2,
      //         ),
      //         itemCount: touristSpots.length, // Replace with your data source
      //         itemBuilder: (context, index) {
      //           return TouristSpotCard(
      //             touristSpot: touristSpots[index], // Replace with your data model
      //           );
      //         },
      //       ),
      //     ),
      //   ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note),
            label: 'Notes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Sparky',
          ),
        ],
      ),
    );
  }
}



