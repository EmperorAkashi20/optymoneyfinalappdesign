import 'package:flutter/material.dart';
import 'package:optymoney_final/screens/home/components/calculators/buy_a_car.dart';
import 'package:optymoney_final/screens/home/components/calculators/emergency_fund.dart';
import 'package:optymoney_final/screens/home/components/calculators/grand_wedding.dart';
import 'package:optymoney_final/screens/home/components/calculators/higher_education.dart';
import 'package:optymoney_final/screens/home/components/calculators/own_a_house.dart';
import 'package:optymoney_final/screens/home/components/calculators/retire_rich.dart';
import 'package:optymoney_final/screens/home/components/calculators/unique_goal.dart';
import 'package:optymoney_final/screens/home/components/calculators/vaccation_plan.dart';
import 'package:optymoney_final/size_config.dart';

class PlanForFuture extends StatefulWidget {
  @override
  _PlanForFutureState createState() => _PlanForFutureState();
}

class _PlanForFutureState extends State<PlanForFuture> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 18.0, bottom: 15.0),
              child: Center(
                child: Text("Planning For Your Future?\nLet Us Help!",textAlign: (TextAlign.center), style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  height: getProportionateScreenHeight(150.0),
                  width: MediaQuery.of(context).size.width * 0.50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12, width: 0.3)
                  ),
                  child: RetireRich(),
                ),
                Container(
                  height: getProportionateScreenHeight(150.0),
                  width: MediaQuery.of(context).size.width * 0.50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                      border: Border.all(color: Colors.black12, width: 0.3),
                  ),
                  child: GrandWedding(),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  height: getProportionateScreenHeight(150.0),
                  width: MediaQuery.of(context).size.width * 0.50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black12, width: 0.3)
                  ),
                  child: HigherEducation(),
                ),
                Container(
                  height: getProportionateScreenHeight(150.0),
                  width: MediaQuery.of(context).size.width * 0.50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12, width: 0.3),
                  ),
                  child: OwnAHouse(),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  height: getProportionateScreenHeight(150.0),
                  width: MediaQuery.of(context).size.width * 0.50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black12, width: 0.3)
                  ),
                  child: BuyACar(),
                ),
                Container(
                  height: getProportionateScreenHeight(150.0),
                  width: MediaQuery.of(context).size.width * 0.50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12, width: 0.3),
                  ),
                  child: VacationPlan(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: getProportionateScreenHeight(150.0),
                    width: MediaQuery.of(context).size.width * 0.50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black12, width: 0.3)
                    ),
                    child: EmergencyFund(),
                  ),
                  Container(
                    height: getProportionateScreenHeight(150.0),
                    width: MediaQuery.of(context).size.width * 0.50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black12, width: 0.3),
                    ),
                    child: UniqueGoal(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
