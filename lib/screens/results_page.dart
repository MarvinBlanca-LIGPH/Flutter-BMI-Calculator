import 'dart:ui';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/utils/results_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final getResult = Get.find<ResultsData>();

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(25.0),
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    getResult.resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    getResult.bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    getResult.interpretationText,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onPressed: () {
                Get.back();
              })
        ],
      ),
    );
  }
}
