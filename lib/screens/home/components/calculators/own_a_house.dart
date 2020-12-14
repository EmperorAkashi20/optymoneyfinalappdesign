import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class OwnAHouse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white,),
      ),
      height: getProportionateScreenHeight(150.0),
      width: MediaQuery.of(context).size.width * 0.50,
      child: RaisedButton(
        elevation: 0,
        color: Colors.white,
        child: Column(
          children: [
            Image.asset('assets/images/house.png', width: getProportionateScreenWidth(120.0),),
            Text("Own A House", textAlign: (TextAlign.center),style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900,color: Colors.black),),
          ],
        ),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                elevation: 16,
                child: Container(
                  height: getProportionateScreenHeight(700),
                  width: getProportionateScreenWidth(360),
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: getProportionateScreenHeight(20),),
                      Center(
                        child: Text("Build Wealth",
                          textAlign: (TextAlign.center),
                          style: TextStyle(fontSize: 22, color: kPrimaryColor, fontWeight: FontWeight.w900,),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(20),),
                      SizedBox(height: getProportionateScreenHeight(20),),
                    ],
                  ),
                ),
              );
            },
          );
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
      ),
    );
  }
}