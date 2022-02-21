import 'package:flutter/material.dart';

import 'package:zed_kids_v2/items.dart';

class Result extends StatefulWidget {
  const Result({
    Key? key,
  }) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  void addItem() {
    setState(() {
      all.add(const Item());
    });
  }

  void restItems() {
    setState(() {
      all = [const Item()];
    });
  }

  List<Widget> all = [
    const Item(),
    const Item(),
    const Item(),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "data",
                    style: TextStyle(
                      color: Colors.yellow[100],
                      fontSize: 30,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "data",
                    style: TextStyle(
                      color: Colors.yellow[100],
                      fontSize: 30,
                    ),
                  )
                ],
              ),
              FloatingActionButton(
                backgroundColor: Colors.teal[900],
                onPressed: restItems,
                child: Icon(
                  Icons.refresh,
                  color: Colors.yellow[100],
                ),
              ),
            ],
          ),
        ),
        Flexible(
          child: ListView.builder(
              itemCount: all.length,
              itemBuilder: (context, index) {
                return all[index];
              }),
        ),
      ],
    );
  }
}
