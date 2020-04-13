import 'package:flutter/material.dart';
import 'package:food_delivery/global.dart';

class Counter extends StatefulWidget {
  final reduce, add;
  final int count;
  const Counter(
      {Key key,
      @required this.count,
      @required this.reduce,
      @required this.add})
      : super(key: key);
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        GestureDetector(
          onTap: widget.add,
          child: Container(
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Icon(
              Icons.add,
              color: MyColors.orange,
            ),
          ),
        ),
        SizedBox(width: 15.0),
        Text("${widget.count}"),
        SizedBox(width: 15.0),
        GestureDetector(
          onTap: widget.reduce,
          child: Container(
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Icon(
              Icons.remove,
              color: MyColors.orange,
            ),
          ),
        ),
      ],
    );
  }
}
