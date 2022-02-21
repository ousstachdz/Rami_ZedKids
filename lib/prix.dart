import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Prix extends StatefulWidget {
  const Prix({Key? key}) : super(key: key);

  @override
  _PrixState createState() => _PrixState();
}

class _PrixState extends State<Prix> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Row(
        children: [
          Flexible(
              child: TextField(
            cursorColor: Colors.yellowAccent[100],
            style: TextStyle(fontSize: 30, color: Colors.yellowAccent[100]),
            decoration: const InputDecoration(
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal)),
              labelText: "Prix :",
              labelStyle: TextStyle(
                color: Colors.teal,
                fontSize: 30,
              ),
            ),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
          ))
        ],
      ),
    );
  }
}
