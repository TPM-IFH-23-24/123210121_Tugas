import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas/detail.dart';
import 'package:tugas/tourism_place.dart';

class Homepage extends StatelessWidget {
  const Homepage ({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 25,
        crossAxisCount: 2,
      ),
          itemCount: tourismPlaceList.length, //munculin sbyk listnya
          itemBuilder: (context, index){
            return InkWell(   //biar bisa di klik kotaknya
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AspectRatio(
                        aspectRatio: 4/3,
                    child: Image.network(
                      tourismPlaceList[index].imageUrls[0],
                      fit: BoxFit.cover,
                    ),
                    ),
                    Text(tourismPlaceList[index].name),
                    Text(tourismPlaceList[index].openDays),
                    Text(tourismPlaceList[index].openTime),
                    Text(tourismPlaceList[index].ticketPrice)
                  ],
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Detail(index: index);
                }));
              },
            );
          }
      ),
    ));
  }
}
