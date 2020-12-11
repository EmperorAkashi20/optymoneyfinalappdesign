import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class NpsCalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(120.0),
      width: getProportionateScreenWidth(125.0),
      child: RaisedButton(
        color: Colors.white,
        child: Column(
          children: [
            Text("N", style: TextStyle(fontSize: 39, fontWeight: FontWeight.w900,color: Colors.red),),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("NPS Calculator", textAlign: (TextAlign.center),style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900,color: Colors.black),),
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
                        child: Text("NPS (National Pension Scheme) Calculator",
                          textAlign: (TextAlign.center),
                          style: TextStyle(fontSize: 19, color: kPrimaryColor, fontWeight: FontWeight.w900,),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(20),),
                      NpsCalcForm(),
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

class NpsCalcForm extends StatefulWidget {
  @override
  _NpsCalcFormState createState() => _NpsCalcFormState();
}

class _NpsCalcFormState extends State<NpsCalcForm> {

  TextEditingController currentAge = new TextEditingController();
  TextEditingController retirementAge = new TextEditingController();
  TextEditingController totalInvestingPeriod = new TextEditingController();
  TextEditingController monthlyContributionToBeDone = new TextEditingController();
  TextEditingController expectedRateOfReturn = new TextEditingController();

  String principalAmountInvested = "0";
  String interestEarnedOnInvestment = "0";
  String pensionWealthGenerated = "0";

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
                    TextSpan(text: "Current Age", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
                    TextSpan(text: "(Years)", style: TextStyle(fontSize: 11.0)),
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
                controller: currentAge,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10.0, right: 10.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  hintText: "Age",
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
                    TextSpan(text: "Retirement Age", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
                    TextSpan(text: " (Years)", style: TextStyle(fontSize: 11.0)),
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
                controller: retirementAge,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10.0, right: 10.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  hintText: "Age",
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
                    TextSpan(text: "Total Investing Period", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
                    TextSpan(text: " (Years)", style: TextStyle(fontSize: 11.0)),
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
                controller: totalInvestingPeriod,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10.0, right: 10.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  hintText: "Years",
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
                    TextSpan(text: "Monthly Contribution to be Done", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
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
                controller: monthlyContributionToBeDone,
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
                    TextSpan(text: "Expected Rate Of Return", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
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
                controller: expectedRateOfReturn,
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
          Center(
            child: Container(
              height: getProportionateScreenHeight(50),
              width: getProportionateScreenWidth(250),
              child: RaisedButton(
                color: kPrimaryColor,
                child: Text('Check NPS', style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.w800)),
                onPressed: () {
                  setState(() {
                    int sum = int.parse(currentAge.text)*int.parse(retirementAge.text);
                    principalAmountInvested = sum.toString();
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
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: "Principal Amount Invested", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
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
                    child: Text(principalAmountInvested, style: TextStyle(fontSize: 15.0),),
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
                    TextSpan(text: "Interest Earned On Investment", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
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
                    child: Text(interestEarnedOnInvestment, style: TextStyle(fontSize: 15.0),),
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
                    TextSpan(text: "Pension Wealth Generated", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
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
                    child: Text(pensionWealthGenerated, style: TextStyle(fontSize: 15.0),),
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
