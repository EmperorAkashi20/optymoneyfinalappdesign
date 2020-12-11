import 'package:flutter/material.dart';
import 'package:optymoney_final/constants.dart';

import '../../../../size_config.dart';

class OldVsNewTaxCalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(120.0),
      width: getProportionateScreenWidth(125.0),
      child: RaisedButton(
        color: Colors.white,
        child: Column(
          children: [
            Text("O", style: TextStyle(fontSize: 39, fontWeight: FontWeight.w900,color: Colors.red),),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Old Vs New Regime Tax Calculator", textAlign: (TextAlign.center),style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900,color: Colors.black),),
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
                        child: Text("Old vs New Tax Regime Calculator",
                            textAlign: (TextAlign.center),
                            style: TextStyle(fontSize: 19, color: kPrimaryColor, fontWeight: FontWeight.w900,),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(20),),
                      OldVsNewTaxForm(),
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

class OldVsNewTaxForm extends StatefulWidget {
  @override
  _OldVsNewTaxFormState createState() => _OldVsNewTaxFormState();
}

class _OldVsNewTaxFormState extends State<OldVsNewTaxForm> {
  TextEditingController num1Controller = new TextEditingController();
      TextEditingController num2Controller = new TextEditingController();
      String result = "0";
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
                    TextSpan(text: "Salary Income", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w900)),
                    TextSpan(text: " (Including all allowance / perks)", style: TextStyle(fontSize: 10.0)),
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
                controller: num1Controller,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10.0, right: 10.0),
                  hintText: "0",
                  hintStyle: TextStyle(fontSize: 18.0, color: Colors.grey
                      , fontWeight: FontWeight.w100),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
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
                    TextSpan(text: "Investment In 80D", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w900)),
                    TextSpan(text: " (Medical Insurance, Expenditure\nup to 75k)", style: TextStyle(fontSize: 10.0)),
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
                controller: num2Controller,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10.0, right: 10.0),
                  hintText: "0",
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.teal),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
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
                    TextSpan(text: "Investment In 80C", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w900)),
                    TextSpan(text: " (Insurance/FD/EPF/PPF/ Equity Oriented Mutual Fund)", style: TextStyle(fontSize: 10.0)),
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
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10.0, right: 10.0),
                  hintText: "0",
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.teal),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Rental Income", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w900)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 18.0),
            child: Container(
              height: getProportionateScreenHeight(50),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10.0, right: 10.0),
                  hintText: "0",
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.teal),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Leave Travel Allowance Claim",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w900)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 18.0),
            child: Container(
              height: getProportionateScreenHeight(50),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10.0, right: 10.0),
                  hintText: "0",
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.teal),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
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
                    TextSpan(text: "80G Donation", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w900)),
                    TextSpan(text: " (100%)", style: TextStyle(fontSize: 10.0)),
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
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10.0, right: 10.0),
                  hintText: "0",
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.teal),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
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
                    TextSpan(text: "80G Donation", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w900)),
                    TextSpan(text: " (50%)", style: TextStyle(fontSize: 10.0)),
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
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10.0, right: 10.0),
                  hintText: "0",
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.teal),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Interest On House Loan", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w900)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 18.0),
            child: Container(
              height: getProportionateScreenHeight(50),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10.0, right: 10.0),
                  hintText: "0",
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.teal),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Fixed Deposit Interest", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w900)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 18.0),
            child: Container(
              height: getProportionateScreenHeight(50),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10.0, right: 10.0),
                  hintText: "0",
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.teal),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
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
                    TextSpan(text: "Food Coupon", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w900)),
                    TextSpan(text: " (Tax Exempted)", style: TextStyle(fontSize: 10.0)),
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
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10.0, right: 10.0),
                  hintText: "0",
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.teal),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("National Pension Scheme Contribution", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w900)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 18.0),
            child: Container(
              height: getProportionateScreenHeight(50),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10.0, right: 10.0),
                  hintText: "0",
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.teal),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20),),
          Center(
            child: Text("Other Details",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 19, color: kPrimaryColor, fontWeight: FontWeight.w900,),
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 2,
            indent: 112,
            endIndent: 110,
          ),
          SizedBox(height: getProportionateScreenHeight(20),),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 18.0),
            child: Container(
              height: getProportionateScreenHeight(50),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Rent Paid/month",
                  hintText: "0",
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.teal),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
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
                decoration: InputDecoration(
                  labelText: "Age",
                  hintText: "0",
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.teal),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
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
                decoration: InputDecoration(
                  labelText: "HRA Component in salary/month",
                  hintText: "0",
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.teal),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
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
                decoration: InputDecoration(
                  labelText: "Basic Salary/month",
                  hintText: "0",
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.teal),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20),),
          Center(
            child: Text("Please fill the form below to pay",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 19, color: kPrimaryColor, fontWeight: FontWeight.w900,),
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 2,
            indent: 112,
            endIndent: 110,
          ),
          SizedBox(height: getProportionateScreenHeight(20),),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 18.0),
            child: Container(
              height: getProportionateScreenHeight(50),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "Please Enter Your Name",
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.teal),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 18.0),
            child: Container(
              height: getProportionateScreenHeight(50),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Please Enter Your Email",
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.teal),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
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
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  hintText: "Enter Your Phone Number",
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.teal),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20),),
          Center(
            child: Container(
              height: getProportionateScreenHeight(50),
              width: getProportionateScreenWidth(200),
              child: RaisedButton(
                color: kPrimaryColor,
                child: Text('Calculate', style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.w800)),
                onPressed: () {
                  setState(() {
                    int sum = int.parse(num1Controller.text)+int.parse(num2Controller.text);
                    result = sum.toString();
                  });
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Result:",
                style: TextStyle(
                  fontSize: 30,
                ),),
              Text(result,
                style: TextStyle(
                  fontSize: 30,
                ),),
            ],
          ),
        ],
      ),
    );
  }
}

