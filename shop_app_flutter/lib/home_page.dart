import 'package:flutter/material.dart';
import './product_list.dart';
import './cart_page.dart';
class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
       int currentPage=0;

       List<Widget>pages=[
          ProductList(),
          CartPage()
       ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: IndexedStack(index:currentPage,children: pages),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value)=>{
          setState(() {
            currentPage=value;
          })
        },
       currentIndex: currentPage, 
       iconSize: 35,
       selectedFontSize: 0,
       unselectedFontSize: 0,
        items: [
        BottomNavigationBarItem(icon:Icon(Icons.home),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: '')
      ],),
    );
  } 
}