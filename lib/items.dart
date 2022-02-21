import 'package:flutter/material.dart';

import 'package:zed_kids_v2/prix.dart';

class Item extends StatefulWidget {
  const Item({Key? key}) : super(key: key);

  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Prix(),
        Prix(),
      ],
    );
  }
}
