import 'package:flutter/material.dart';
import 'package:rapidgorcery/views/order_view/order_widget/completed_order_widget.dart';



class CompletedOrderView extends StatelessWidget {
  const CompletedOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: completedOrderWidget(context: context),

    );
  }
}