
import 'package:flutter/material.dart';

class AdditionalInformation extends StatelessWidget {
  const AdditionalInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.water_drop,
          size: 32,
        ),
        SizedBox(height: 8,),
       Text("Humididty"),
        SizedBox(height: 8,),
        Text(
          '94',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }
}

