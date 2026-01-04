import 'package:flutter/material.dart';
import 'package:shop_app_flutter/product_details_page.dart';
import './global_variable.dart';
import './product_card.dart';
class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
       String selectedFilter='All';

  final List<String>list=const[
    'All',
    'Addidas',
    'Nike',
    'Bata'
  ];

   


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final border=const OutlineInputBorder(
                        borderSide: BorderSide(
                          color:Color.fromRGBO(225, 225, 225, 1),
                        ),
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(50))
                      );
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [ 
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                  'Shoes \nCollection',
                  style: TextStyle(
                    fontWeight:FontWeight.bold,
                    fontSize: 35 ,
                  ),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      border: border,
                      enabledBorder: border,
                      focusedBorder: border
                    ),
                  ),
                ),
              ],
            ),
            
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  final filter=list[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                    child: GestureDetector(
                      onTap:(){
                        setState(() {
                            selectedFilter=filter;
                        });
                      },
                      child: Chip(
                      side: BorderSide(color: Colors.white),
                      label:Text(filter),
                      backgroundColor: selectedFilter==filter?Theme.of(context).colorScheme.primary:const Color.fromARGB(66, 228, 223, 223),
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                      )
                      ),
                    ),
                  
                  );
                },
                ),
            ),
          Expanded(
            child: ListView.builder(
              itemCount:products.length ,
              itemBuilder: (context,index){
                final product=products[index];
                  return GestureDetector(
                    //push replacememt is used in login age if a user logined no need to go back
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return ProductDetailsPage(product:product);
                      }));
                    },
                    child: ProductCard(
                      title:product['title'] as String,
                      price: product['price'] as double,
                      image:product['imageUrl'] as String,
                      backgroundColor:(index.isEven)?Color.fromARGB(215, 152, 190, 201):Colors.red.shade200
                      ),
                  );
              },
            ),
          )
          ],
        ),
      )
    );
  } 
}