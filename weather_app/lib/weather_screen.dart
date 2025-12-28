import 'dart:ui';

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
                  SizedBox(
                    width: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(10),
                      child: Card(
                        elevation: 6,
                         color: Colors.white.withOpacity(0.10),
                        child: BackdropFilter(
                         filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                          child: Padding(
                            padding: EdgeInsetsGeometry.all(8),
                            child: Column(
                              children: [
                                Text(
                                  '03:33',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                                
                                  const SizedBox(height: 8,),
                                  Icon(
                                    Icons.cloud,
                                    size: 32,
                                  ),
                                                
                                  const SizedBox(height: 8,),
                                                
                                  Text(
                                  '320',
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(10),
                      child: Card(
                        elevation: 6,
                         color: Colors.white.withOpacity(0.10),
                        child: BackdropFilter(
                         filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                          child: Padding(
                            padding: EdgeInsetsGeometry.all(8),
                            child: Column(
                              children: [
                                Text(
                                  '03:33',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                                
                                  const SizedBox(height: 8,),
                                  Icon(
                                    Icons.cloud,
                                    size: 32,
                                  ),
                                                
                                  const SizedBox(height: 8,),
                                                
                                  Text(
                                  '320',
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(10),
                      child: Card(
                        elevation: 6,
                         color: Colors.white.withOpacity(0.10),
                        child: BackdropFilter(
                         filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                          child: Padding(
                            padding: EdgeInsetsGeometry.all(8),
                            child: Column(
                              children: [
                                Text(
                                  '03:33',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                                
                                  const SizedBox(height: 8,),
                                  Icon(
                                    Icons.cloud,
                                    size: 32,
                                  ),
                                                
                                  const SizedBox(height: 8,),
                                                
                                  Text(
                                  '320',
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(10),
                      child: Card(
                        elevation: 6,
                         color: Colors.white.withOpacity(0.10),
                        child: BackdropFilter(
                         filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                          child: Padding(
                            padding: EdgeInsetsGeometry.all(8),
                            child: Column(
                              children: [
                                Text(
                                  '03:33',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                                
                                  const SizedBox(height: 8,),
                                  Icon(
                                    Icons.cloud,
                                    size: 32,
                                  ),
                                                
                                  const SizedBox(height: 8,),
                                                
                                  Text(
                                  '320',
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(10),
                      child: Card(
                        elevation: 6,
                         color: Colors.white.withOpacity(0.10),
                        child: BackdropFilter(
                         filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                          child: Padding(
                            padding: EdgeInsetsGeometry.all(8),
                            child: Column(
                              children: [
                                Text(
                                  '03:33',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                                
                                  const SizedBox(height: 8,),
                                  Icon(
                                    Icons.cloud,
                                    size: 32,
                                  ),
                                                
                                  const SizedBox(height: 8,),
                                                
                                  Text(
                                  '320',
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            

        
        
            //additional information
        
            // const Placeholder(
            //   fallbackHeight: 150,
            // )
        
          ],
        ),
      ),
    );
  }

}