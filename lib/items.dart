import 'package:flutter/material.dart';

import 'package:zed_kids_v2/prix.dart';

class Item extends StatefulWidget {
  const Item({Key? key}) : super(key: key);

  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  void _totalProfit(int profit) {
    setState(() {
      _totalprofits += profit;
    });
  }

  void _totalPrice(int price) {
    setState(() {
      _total_Price += price;
    });
  }

  int _total_Price = 0;
  int _totalprofits = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Prix(
          addNewValue: _totalPrice,
          title: 'Price',
        ),
        Prix(
          addNewValue: _totalProfit,
          title: 'Profit',
        ),
      ],
    );
  }
}
