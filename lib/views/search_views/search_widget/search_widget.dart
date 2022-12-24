
import 'package:flutter/material.dart';

Widget searchViewWidget({BuildContext? context}){
    double height = MediaQuery.of(context!).size.height / 100;
  

   return Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                height: 7 * height, decoration:  BoxDecoration(border: Border.all(width:1 , color: Theme.of(context).textTheme.headline2!.color!,),borderRadius: BorderRadius.circular(10)),
               child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            suffixIcon: Container(height: 15, width: 20,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Theme.of(context).primaryColor),
                            child: const Icon(Icons.search, color: Colors.white,),
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            disabledBorder: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                  color: Theme.of(context)
                                      .inputDecorationTheme
                                      .disabledBorder!
                                      .borderSide
                                      .color),
                            ),
                            hintText: "Find Something",
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 14),
                            hintStyle: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                        ),
               );
 
}