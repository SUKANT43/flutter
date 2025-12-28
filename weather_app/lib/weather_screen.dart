import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import './secrets.dart';
import './weather_forecast.dart';
import './additional_inforation.dart';
import 'package:http/http.dart' as http;



class WeatherScreen extends StatefulWidget {
const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
final String cityName="London";
@override
void initState() {
  super.initState();
  getCurrentWeather();
}

Future getCurrentWeather() async{
   final res=await http.get(Uri.parse("https://api.openweathermap.org/data/2.5/forecast?q=London,uk&appid=6e9b88f9592590512f8d7d3e2cd287fd"));
   final data=jsonDecode(res.body);
   if(data['cod']!='200'){
    throw 'unexpected error';
   }
}



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
                 HourlyForecast(time:"00:00",icondata: Icons.cloud,temperature: "301.22"),
                 HourlyForecast(time:"00:00",icondata: Icons.sunny,temperature: "301.22"),
                 HourlyForecast(time:"00:00",icondata: Icons.cloud,temperature: "301.22"),
                 HourlyForecast(time:"00:00",icondata: Icons.cloud,temperature: "301.22"),
                 HourlyForecast(time:"00:00",icondata: Icons.cloud,temperature: "301.22"),
                 
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
            AdditionalInformation(
              icondata:Icons.water_drop,
              label: "Humidity",
              value: "91",
            ),
            AdditionalInformation(
              icondata: Icons.air,
              label: "Wind Speed",
              value: "7.5",
            ),
            AdditionalInformation(
              icondata: Icons.beach_access,
              label: "Pressure",
              value: "1000",
            ),
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

