import 'package:flutter/material.dart';

import '../../../../size_config.dart';

class EmptyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(120.0),
      width: getProportionateScreenWidth(125.0),
      child: RaisedButton(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("", textAlign: (TextAlign.center),style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900,color: Colors.black),),
            )
          ],
        ),
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
      ),
    );
  }
}
