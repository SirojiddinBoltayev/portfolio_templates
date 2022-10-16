import 'package:flutter/material.dart';
import 'package:portfolio_templates/widgets/list_work.dart';

Widget itemUI(ListWork listWork,){
  return Container(
    // width: 200,
    // height: 200,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 15,),
        Row(
          children: [
            Text(listWork.position,style: TextStyle(fontSize: 24,color: Colors.black),),
            Spacer(),
            Text(listWork.time,style: TextStyle(fontSize: 12,color: Colors.grey),),

          ],
        ),
        SizedBox(height: 5,),
        Text(listWork.address,style: TextStyle(fontSize: 12,color: Colors.blue),),
        SizedBox(height: 15,),
        Text(listWork.description,style: TextStyle(fontSize: 14,color: Colors.black54),),
        SizedBox(height: 10,),
      ],
    ),
  );
}