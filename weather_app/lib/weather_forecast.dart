import 'package:flutter/material.dart';
import 'dart:ui';

class HourlyForecast extends StatelessWidget{
  final String time;
  final String temperature;
  final IconData icondata;
  const HourlyForecast({super.key,required this.time,required this.temperature,required this.icondata});

  @override
  Widget build(BuildContext context) {
                 return SizedBox (
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
                                time,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                                
                                  const SizedBox(height: 8,),
                                  Icon(
                                    icondata,
                                    size: 32,
                                  ),
                                                
                                  const SizedBox(height: 8,),
                                                
                                  Text(
                                  temperature
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ); 
                   }
}