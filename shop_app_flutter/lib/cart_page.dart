import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './cart_provider.dart';
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    //final cartProvider = context.watch<>().cart;



    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Cart')),
      ),
      body: ListView.builder(
        itemCount: cartProvider.cart.length,
        itemBuilder: (context, index) {
          final item = cartProvider.cart[index];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    AssetImage(item['imageUrl'] as String),
                radius: 30,
              ),
              title: Text(
                item['title'] as String,
                style: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle:
                  Text("Size: ${item['sizes']}"),
              trailing: IconButton(
                onPressed: () {
                  showDialog(context: context, 
                  builder: (context){
                    return AlertDialog(
                       title: Text("Delete Product",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
                       content:Text("Are you sure you want to remove shoe from cart."),
                       actions: [
                        TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No",style: TextStyle(color: Colors.blue.shade400,fontWeight: FontWeight.bold),)),
                        TextButton(onPressed: (){cartProvider.removeProduct(item);Navigator.of(context).pop();}, child: Text("Yes",style: TextStyle(color: Colors.red.shade400,fontWeight: FontWeight.bold))),

                       ],
                    );
                  });
                },
                icon: const Icon(Icons.delete, color: Colors.red),
              ),
            ),
          );
        },
      ),
    );
  }
}


// Consumer<CartProvider>(
//   builder: (context, cartProvider, child) {
//     return ListView.builder(
//       itemCount: cartProvider.cart.length,
//       itemBuilder: (context, index) {
//         final item = cartProvider.cart[index];
//         return ListTile(
//           subtitle: Text(
//             "Size: ${(item['sizes'] as List<int>).join(', ')}",
//           ),
//         );
//       },
//     );
//   },
// ), stops re render every single time

