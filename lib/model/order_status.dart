import 'package:flutter/material.dart';

class OnGoingModel{
String? orderId;
String? totalcost;
String? status;
Color? color;


OnGoingModel({this.orderId, this.totalcost, this.status, this.color});

static List<OnGoingModel> ongoingmodelList =[
OnGoingModel(color: Colors.red, status: "Pending", totalcost: "45",orderId: "#O434345"),
OnGoingModel(color: Colors.blue, status: "Shipping", totalcost: "45",orderId: "#O434345"),
OnGoingModel(color: Colors.red, status: "Pending", totalcost: "45",orderId: "#O434345"),
OnGoingModel(color: Colors.green, status: "Shipping", totalcost: "45",orderId: "#O434345"),


];
}

class CompletedOrder{
String? orderId;
String? totalcost;
String? status;



CompletedOrder({this.orderId, this.totalcost, this.status});

static List<CompletedOrder> completedModelList =[
CompletedOrder( status: "Completed", totalcost: "45",orderId: "#O434345"),
CompletedOrder( status: "Completed", totalcost: "45",orderId: "#O434345"),
CompletedOrder( status: "Completed", totalcost: "45",orderId: "#O434345"),
CompletedOrder( status: "Completed", totalcost: "45",orderId: "#O434345"),


];
}