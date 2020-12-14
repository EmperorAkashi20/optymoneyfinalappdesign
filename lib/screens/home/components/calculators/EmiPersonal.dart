import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class EmiPersonalLoanCalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(120.0),
      width: getProportionateScreenWidth(125.0),
      child: RaisedButton(
        color: Colors.white,
        child: Column(
          children: [
            Text("E", style: TextStyle(fontSize: 39, fontWeight: FontWeight.w900,color: Colors.red),),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("EMI Personal Loan Calculator", textAlign: (TextAlign.center),style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900,color: Colors.black),),
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
                        child: Text("EMI Personal Loan Calculator",
                          textAlign: (TextAlign.center),
                          style: TextStyle(fontSize: 19, color: kPrimaryColor, fontWeight: FontWeight.w900,),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(20),),
                      EmiPersonalLoanForm(),
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

class EmiPersonalLoanForm extends StatefulWidget {
  @override
  _EmiPersonalLoanFormState createState() => _EmiPersonalLoanFormState();
}

class _EmiPersonalLoanFormState extends State<EmiPersonalLoanForm> {

  TextEditingController personalLoanAmount = new TextEditingController();
  TextEditingController tenure = new TextEditingController();
  TextEditingController interestRate = new TextEditingController();

  String emiAmount = "0";
  String totalAmountPayable ="0";
  String interestComponent = "0";

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
                    TextSpan(text: "Personal Loan Amount", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
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
                controller: personalLoanAmount,
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
                    TextSpan(text: "Tenure", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
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
                controller: tenure,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10.0, right: 10.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  hintText: "No. Of Years",
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
                    TextSpan(text: "Interest Rate (P.A.)", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
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
          Center(
            child: Container(
              height: getProportionateScreenHeight(50),
              width: getProportionateScreenWidth(200),
              child: RaisedButton(
                color: kPrimaryColor,
                child: Text('Check Personal Loan', style: TextStyle(color: Colors.white,fontSize: 17, fontWeight: FontWeight.w800)),
                onPressed: () {
                  setState(() {
                    int sum = int.parse(personalLoanAmount.text)*int.parse(interestRate.text);
                    emiAmount = sum.toString();
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
                    TextSpan(text: "EMI Amount", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 2.0, color: Colors.grey,),
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(emiAmount, style: TextStyle(fontSize: 15.0),),
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
                    TextSpan(text: "Total Payable Amount", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 2.0, color: Colors.grey,),
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(totalAmountPayable, style: TextStyle(fontSize: 15.0),),
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
                    TextSpan(text: "Interest Component", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 2.0, color: Colors.grey,),
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(interestComponent, style: TextStyle(fontSize: 15.0),),
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
                        TextSpan(text: "*Suggestion:\n", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w900),),
                        TextSpan(text: "Keep your loan tenure as low as possible, as the tenure increases interest component increases significantly.", style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 18.0),
            child: Container(
              height: getProportionateScreenHeight(70),
              width: double.infinity,
              child: Container(
                decoration: ShapeDecoration(
                  color: Colors.amberAccent,
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
                        TextSpan(text: "**", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w900),),
                        TextSpan(text: "Invest In SIP's for emergency fund with instant withdraw option.", style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400),),
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
