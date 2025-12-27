import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
const WeatherScreen({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Weather App") ,
        centerTitle: true,
        titleTextStyle:TextStyle(
          fontSize: 25,
          fontWeight:FontWeight.bold
        ),
        actions: [
         //InkWell( //or GestureDetector
          //onTap: (){print("refresh");},
          //child:const Icon(Icons.refresh))
          IconButton(onPressed: (){}, 
          icon:const Icon(Icons.refresh),

          )
        ],
      ),
    );
  }

}