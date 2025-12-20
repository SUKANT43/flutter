import 'package:flutter/material.dart';
import './currency_converter_page.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
     const MyApp({super.key});

  @override
   build(BuildContext context){
    return MaterialApp(
     home:CurrencyConverterMaterialPage(),
    );

  }
}

/*
types of widget
1.StateLessWidget-immutable
2.stateFullWidget-mutable
3.InheritedWidget

1.Material design
2.Cupertino design

*/