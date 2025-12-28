
import 'package:flutter/material.dart';

class AdditionalInformation extends StatelessWidget {
  final IconData icondata;
  final String label;
  final String value;
  const AdditionalInformation({
    super.key,
    required this.icondata,
    required this.label,
    required this.value
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icondata,
          size: 32,
        ),
        SizedBox(height: 8,),
       Text(label),
        SizedBox(height: 8,),
        Text(
          value,
          style:const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }
}

