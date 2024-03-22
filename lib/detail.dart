import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas/tourism_place.dart';

class Detail extends StatelessWidget {
  const Detail({super.key, required this.index});

  final int index;   //biar kalo mau ke detail page harus pakai image

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(tourismPlaceList[index].name),
            Text(tourismPlaceList[index].location),
            Text(tourismPlaceList[index].description),
            Text(tourismPlaceList[index].openDays),
            Text(tourismPlaceList[index].openTime),
            Text(tourismPlaceList[index].ticketPrice),
            Image.network(tourismPlaceList[index].imageUrls[0]),
            Image.network(tourismPlaceList[index].imageUrls[1]),
            Image.network(tourismPlaceList[index].imageUrls[2]),
          ],
        ),),
      ),
    ));
  }
}
