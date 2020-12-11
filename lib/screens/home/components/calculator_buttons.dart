import 'package:flutter/material.dart';
import 'package:optymoney_final/screens/home/components/calculators/EmiPersonal.dart';
import 'package:optymoney_final/screens/home/components/calculators/emicarloan.dart';
import 'package:optymoney_final/screens/home/components/calculators/emiloancalc.dart';
import 'package:optymoney_final/screens/home/components/calculators/emptybutton.dart';
import 'package:optymoney_final/screens/home/components/calculators/epfcalc.dart';
import 'package:optymoney_final/screens/home/components/calculators/fixeddepositcalc.dart';
import 'package:optymoney_final/screens/home/components/calculators/hraalc.dart';
import 'package:optymoney_final/screens/home/components/calculators/lumpsum.dart';
import 'package:optymoney_final/screens/home/components/calculators/npscalc.dart';
import 'package:optymoney_final/screens/home/components/calculators/oldvsnew.dart';
import 'package:optymoney_final/screens/home/components/calculators/ppfcalc.dart';
import 'package:optymoney_final/screens/home/components/calculators/recurringdepositcalc.dart';
import 'package:optymoney_final/screens/home/components/calculators/sipcalc.dart';
import 'package:optymoney_final/screens/home/components/calculators/sipcalcu.dart';
import 'package:optymoney_final/screens/home/components/calculators/sukanyasamriddhi.dart';
import 'package:optymoney_final/screens/home/components/calculators/swpalc.dart';
import 'package:optymoney_final/screens/home/components/calculators/taccalc.dart';
import 'package:optymoney_final/size_config.dart';

class CalculatorButtons extends StatefulWidget {
  @override
  _CalculatorButtonsState createState() => _CalculatorButtonsState();
}

class _CalculatorButtonsState extends State<CalculatorButtons> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(10.0),),
          Text("WE WILL HELP YOU MANAGE YOUR FINANCE BETTER", textAlign: (TextAlign.center), style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0,),
                child: SipCalc(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: EmiCarLoanCalc(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: SwpCalc(),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: LumpSumCalc(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: EmiPersonalLoanCalc(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: HraCalc(),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: TaxCalc(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: PpfCalc(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: SipInstallmentCalc(),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: FixedDepositCalc(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: EpfCalc(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: OldVsNewTaxCalc(),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: RecurringDepositCalc(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: NpsCalc(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: EmiLoanCalc(),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: EmptyButton(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: SukanyaSamriddhiYojna(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: EmptyButton(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
