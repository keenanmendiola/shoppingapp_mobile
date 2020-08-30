import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final int count;
  final Function increment;
  final Function decrement;

  Counter(
      {@required this.count,
      @required this.increment,
      @required this.decrement});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: IconButton(
            icon: Icon(Icons.arrow_drop_up),
            onPressed: increment,
          ),
        ),
        SizedBox(
          height: 17,
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Text("$count"),
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: IconButton(
            icon: Icon(Icons.arrow_drop_down),
            onPressed: decrement,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
