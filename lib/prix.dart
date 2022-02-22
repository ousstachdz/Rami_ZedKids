import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Prix extends StatefulWidget {
  final Function addNewValue;
  final String title;
  const Prix(
      {Key? key, required this.addNewValue(int price), required this.title})
      : super(key: key);

  @override
  _PrixState createState() => _PrixState();
}

class _PrixState extends State<Prix> {
  TextEditingController textControl = TextEditingController();

  int previousValue = 0;

  void onChangeHandler() {
    print(-previousValue);
    print(int.parse(textControl.value.toString()));
    setState(() {
      previousValue = int.parse(textControl.value.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Row(
        children: [
          Flexible(
              child: TextField(
            onChanged: (value) {
              onChangeHandler;
            },
            controller: textControl,
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
