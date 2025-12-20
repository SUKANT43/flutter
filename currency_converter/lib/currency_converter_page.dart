import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget{
  const CurrencyConverterMaterialPage({super.key});
@override
  Widget build(BuildContext context) {
          final border=OutlineInputBorder(
              borderSide: BorderSide(
                width: 2.0,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(60),
            );

    return  Scaffold(

      backgroundColor: Colors.blueGrey,
      body:Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("0",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 249, 249, 250)
          ),
        ),
        TextField(
          style: TextStyle(
            color: Color.fromRGBO(2, 0, 11, 1),
            fontWeight: FontWeight.bold
          ),
          decoration: InputDecoration(
            hintText: "Please enter amount in USD",
            hintStyle: TextStyle(
              fontWeight:FontWeight.normal,
              color: Colors.black
            ),
            suffixIcon:Icon(Icons.monetization_on ),
            suffixIconColor: Colors.black,
            filled: true,
            fillColor: Colors.white,
            focusedBorder:border,
            enabledBorder: border
          ),
        ),
        ],
      ),
    ),
  );
  }
}