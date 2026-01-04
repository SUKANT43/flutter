import 'package:flutter/material.dart';
import 'package:shop_app_flutter/cart_provider.dart';

import 'package:provider/provider.dart';

class ProductDetailsPage extends StatefulWidget {
  final Map<String,Object>product;
  const ProductDetailsPage({super.key, required this.product});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int selectedSize=0;
  void onTap(){
    if(selectedSize!=0){
      Provider.of<CartProvider>(context,listen: false).addProduct(
        {
      'id': widget.product['id'],
      'title': widget.product['title'],
      'price': widget.product['price'],
      'imageUrl': widget.product['imageUrl'],
      'company': widget.product['company'],
      'sizes':selectedSize
      },
      );
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Product added successfully!')));

    }
    //this messanger find the nearest scaffold and showing the shownackbar
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please select size.')));
    }
              }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Details',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center),),
        
        body: Column(
          children: [
            Text(widget.product['title'] as String ,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(widget.product['imageUrl'] as String ),
            ),
            Spacer(flex: 2,),
            Container(
              height: 250,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 247, 249, 1),
                  borderRadius: BorderRadius.circular(40)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("\$${widget.product['price'] as double}",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 35)),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: (widget.product['sizes'] as List<int>).length,
                      itemBuilder: (content,index){
                        final size=(widget.product['sizes'] as List<int>)[index]; 
                        
                        return Padding(
                          padding: EdgeInsetsGeometry.all(8),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                selectedSize=size;
                              });
                            },
                            child: Chip(
                              backgroundColor: selectedSize==size?Colors.amber:null,
                              label: Text(size.toString()),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton.icon(
                    onPressed:onTap,
                    icon: const Icon(Icons.shopping_cart, color: Colors.black),
                    label: const Text(
                      'Add to Cart',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      minimumSize: const Size(double.infinity, 50),
                    ),
                  ),
                  )
                ],
              ),
              ),
          ],
        ),
    );
  }
}