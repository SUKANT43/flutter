import 'dart:ui';

import 'package:flutter/material.dart';
import './weather_forecast.dart';
import './additional_inforation.dart';
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
      body: Padding(

        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //main card
           SizedBox(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Card(
                  elevation: 10,
                  color: Colors.white.withOpacity(0.10),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text(
                            "300.67°F",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.cloud, size: 64),
                          Text(
                            "Rain",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height:20),

            //weather forecast card

            Text(
              "Weather Forecast",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),

            const SizedBox(height: 20,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                 HourlyForecast(),
                 HourlyForecast(),
                 HourlyForecast(),
                 HourlyForecast(),
                 HourlyForecast(),
                 
                ],
              ),
            ),
            

        
        
            //additional information

            const SizedBox(
              height: 20,
            ),

            Text(
              "Additional Information",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
              ),
            
        const SizedBox(height: 20,),

        Row(
          mainAxisAlignment:MainAxisAlignment.spaceAround ,
          children: [
            AdditionalInformation(),
            AdditionalInformation(),
            AdditionalInformation(),
          ],
        )
            // const Placeholder(
            //   fallbackHeight: 150,
            // )
        
          ],
        ),
      ),
    );
  }

}

