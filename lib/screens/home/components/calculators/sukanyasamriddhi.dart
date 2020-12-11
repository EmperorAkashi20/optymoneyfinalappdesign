import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class SukanyaSamriddhiYojna extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(120.0),
      width: getProportionateScreenWidth(125.0),
      child: RaisedButton(
        color: Colors.white,
        child: Column(
          children: [
            Text("S", style: TextStyle(fontSize: 39, fontWeight: FontWeight.w900,color: Colors.red),),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Sukanya Samriddhi Yojna", textAlign: (TextAlign.center),style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900,color: Colors.black),),
            )
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
                        child: Text("SSY (Sukanya Samriddhi Yojna) Calculator",
                          textAlign: (TextAlign.center),
                          style: TextStyle(fontSize: 19, color: kPrimaryColor, fontWeight: FontWeight.w900,),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(20),),
                      SsyForm(),
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

class SsyForm extends StatefulWidget {
  @override
  _SsyFormState createState() => _SsyFormState();
}

class _SsyFormState extends State<SsyForm> {

  TextEditingController amountInvested = new TextEditingController();
  TextEditingController interestRate = new TextEditingController();
  TextEditingController investmentStartedAtTheAgeOf = new TextEditingController();

  String maturityYear = "0";
  String totalMaturityAmount = "0";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: "Amount invested", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
                    TextSpan(text: " (Months)", style: TextStyle(fontSize: 11.0)),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 18.0),
            child: Container(
              height: getProportionateScreenHeight(50),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: amountInvested,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10.0, right: 10.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  hintText: "Total Amount",
                  hintStyle: TextStyle(fontSize: 18.0, color: Colors.grey
                      , fontWeight: FontWeight.w100),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.teal,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: "Interest Rate", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
                    TextSpan(text: " (%)", style: TextStyle(fontSize: 11.0)),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 18.0),
            child: Container(
              height: getProportionateScreenHeight(50),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: interestRate,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10.0, right: 10.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  hintText: "Rate %",
                  hintStyle: TextStyle(fontSize: 18.0, color: Colors.grey
                      , fontWeight: FontWeight.w100),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.teal,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: "Investment Started At the Year Of", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
                    TextSpan(text: "", style: TextStyle(fontSize: 11.0)),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 18.0),
            child: Container(
              height: getProportionateScreenHeight(50),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: investmentStartedAtTheAgeOf,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10.0, right: 10.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  hintText: "Total Amount",
                  hintStyle: TextStyle(fontSize: 18.0, color: Colors.grey
                      , fontWeight: FontWeight.w100),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.teal,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              height: getProportionateScreenHeight(50),
              width: getProportionateScreenWidth(250),
              child: RaisedButton(
                color: kPrimaryColor,
                child: Text('Check SSY', style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.w800)),
                onPressed: () {
                  setState(() {
                    int sum = int.parse(amountInvested.text)*int.parse(interestRate.text);
                    totalMaturityAmount = sum.toString();
                  });
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20),),
          Divider(
            color: Colors.black,
            thickness: 1,
          ),
          Align(
            alignment: Alignment.center,
            child: Text("OUTPUT",
              style: TextStyle(fontSize: 19, color: kPrimaryColor, fontWeight: FontWeight.w900,),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20),),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: "Maturity Year", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
                    TextSpan(text: "", style: TextStyle(fontSize: 11.0)),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 18.0),
            child: Container(
              height: getProportionateScreenHeight(50),
              width: double.infinity,
              child: Container(
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: Border.all(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(maturityYear, style: TextStyle(fontSize: 15.0),),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: "Total Maturity Amount", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
                    TextSpan(text: "", style: TextStyle(fontSize: 11.0)),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 18.0),
            child: Container(
              height: getProportionateScreenHeight(50),
              width: double.infinity,
              child: Container(
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: Border.all(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(totalMaturityAmount, style: TextStyle(fontSize: 15.0),),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 18.0),
            child: Container(
              height: getProportionateScreenHeight(100),
              width: double.infinity,
              child: Container(
                decoration: ShapeDecoration(
                  color: Colors.cyanAccent,
                  shape: Border.all(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(text: "*", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w900),),
                        TextSpan(text: " Invest in top MF's for child education, child marriage and for bright future of child.", style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
