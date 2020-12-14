import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class PpfCalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(120.0),
      width: getProportionateScreenWidth(125.0),
      child: RaisedButton(
        color: Colors.white,
        child: Column(
          children: [
            Text("P", style: TextStyle(fontSize: 39, fontWeight: FontWeight.w900,color: Colors.red),),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("PPF Calculator", textAlign: (TextAlign.center),style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900,color: Colors.black),),
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
                        child: Text("PPF Calculator",
                          textAlign: (TextAlign.center),
                          style: TextStyle(fontSize: 19, color: kPrimaryColor, fontWeight: FontWeight.w900,),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(20),),
                      PpfCalcForm(),
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

class PpfCalcForm extends StatefulWidget {
  @override
  _PpfCalcFormState createState() => _PpfCalcFormState();
}

class _PpfCalcFormState extends State<PpfCalcForm> {

  TextEditingController totalAmountInvested = new TextEditingController();
  TextEditingController ppfInterestRate = new TextEditingController();
  TextEditingController tenure = new TextEditingController();

  String totalInvestment = "0";
  String totalInterestEarned = "0";
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
                    TextSpan(text: "Total Amount Invested", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
                    TextSpan(text: " (Per Year)", style: TextStyle(fontSize: 11.0)),
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
                controller: totalAmountInvested,
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
                    TextSpan(text: "PPF Interest Rate", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
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
                controller: ppfInterestRate,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10.0, right: 10.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  hintText: "Amount",
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
                    TextSpan(text: "No. Of Years", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
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
                controller: tenure,
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
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(text: "Select City", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
                          TextSpan(text: "", style: TextStyle(fontSize: 11.0)),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: getProportionateScreenWidth(193.0),
                  child: PpfDropDown(),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              height: getProportionateScreenHeight(50),
              width: getProportionateScreenWidth(200),
              child: RaisedButton(
                color: kPrimaryColor,
                child: Text('Compute', style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.w800)),
                onPressed: () {
                  setState(() {
                    int sum = int.parse(totalAmountInvested.text)*int.parse(tenure.text);
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
                    TextSpan(text: "Total Investment", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
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
                    child: Text(totalInvestment, style: TextStyle(fontSize: 15.0),),
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
                    TextSpan(text: "Total Interest Earned", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900)),
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
                    child: Text(totalInterestEarned, style: TextStyle(fontSize: 15.0),),
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
                    child: Text(totalMaturityAmount, style: TextStyle(fontSize: 15.0),),
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
                        TextSpan(text: "*Tax Saving:\n", style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15.0),),
                        TextSpan(text: "Under Sec 80C.")
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
              height: getProportionateScreenHeight(90),
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
                  child: Text("**ELSS(Tax Saving MF) is also exempted like PPF and can generate better return then PPF "),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PpfDropDown extends StatefulWidget {
  @override
  _PpfDropDownState createState() => _PpfDropDownState();
}

class _PpfDropDownState extends State<PpfDropDown> {
  List<String> _locations = ['Beginning Of the Period', 'End Of The Period']; // Option 2
  String _selectedLocation; // Option 2
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: DropdownButton(
          hint: Text("Choose 1", textAlign: (TextAlign.center),),
          value: _selectedLocation,
          onChanged: (newValue) {
            setState(() {
              _selectedLocation = newValue;
            });
          },
          items: _locations.map((location) {
            return DropdownMenuItem(
              child: new Text(location),
              value: location,
            );
          }).toList(),
        ),
      ),
    );
  }
}