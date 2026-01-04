import 'package:flutter/material.dart';
import './home_page.dart';
import './product_details_page.dart';
import './global_variable.dart';
void main(){
  runApp(MyApp());
}

 class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
   build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Lato',
          colorScheme:ColorScheme.fromSeed(
            seedColor: Color.fromRGBO(254, 206, 1, 1),
            primary: Color.fromRGBO(254, 206, 1, 1)
          ) ,
          inputDecorationTheme:const InputDecorationTheme(
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
          ),
          textTheme: TextTheme(
            titleMedium: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            
            bodySmall: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16
            )
          ),
          appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(
              fontSize: 16,
              color: Colors.black
            ),
          )
        ),
        home:HomePage(),
    );
  }
 }