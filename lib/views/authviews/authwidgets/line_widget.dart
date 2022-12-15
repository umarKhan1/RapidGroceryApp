import 'package:flutter/material.dart';

Container containerlineWidget(BuildContext context){
return Container(
  width: 40 * MediaQuery.of(context).size.width/100 ,
  height: 1,
  decoration: const  BoxDecoration(color: Colors.grey),
);

}