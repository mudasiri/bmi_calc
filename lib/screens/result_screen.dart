import 'package:bmi_calc/components/bottom_button.dart';
import 'package:bmi_calc/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';



class resultPage extends StatefulWidget {
 /* final double result;
  const resultPage({Key? key,  required this.result}) : super(key: key);*/

 // double weight;
  final String result;
  final String status;
  final String words;
  resultPage({
    required this.result,
    required this.status,
    required this.words
});

  @override
  _resultPageState createState() => _resultPageState();
}

class _resultPageState extends State<resultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Text(
              'YOUR RESULTS IS:',

            ),
          ),
          Expanded(
            flex: 5,
              child: reusableCard(
          cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
              Text(
                'NORMAL',
                textAlign: TextAlign.center,
              ),
            Text(
              '55',
              textAlign: TextAlign.center,
             ),
             Text(
                'Normal BMI Range Is: ',
               textAlign: TextAlign.center,
                 ),
           Text(
            'You did a Great Job Maining Your BMI',
             textAlign: TextAlign.center,
            )
            ],
          ),
            colour: kActiveCardColor,
             onPress: (){

               }
            )),
          Expanded(
              child: bottom_Button(
                onTap: (){

                },
                label: 'RE - CALCULATE',
              )
          ),

        ],
      ),
    );
  }
}

class bmiResult extends StatelessWidget {
  //const bmiResult({Key? key}) : super(key: key);

  final String result;
  final String status;
  final String words;
  bmiResult({
    required this.result,
    required this.status,
    required this.words
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Text(
              'YOUR RESULTS IS:',

            ),
          ),
          Expanded(
              flex: 5,
              child: reusableCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        status.toUpperCase(),
                        style: kBmiStatusText,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        result,
                        style: kResultText,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Normal BMI Range Is : 18.5 - 25 ',
                        style: kLabelStyle,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        words,
                        style: kBmiBodyText,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  colour: kActiveCardColor,
                  onPress: (){

                  }
              )),
          Expanded(
              child: bottom_Button(
                onTap: (){
                  Navigator.pop(context);
                },
                label: 'RE - CALCULATE',
              )
          ),

        ],
      ),
    );
  }
}

