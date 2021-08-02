import 'package:bmi_calc/calculator_brain.dart';
import 'package:bmi_calc/components/bottom_button.dart';
import 'package:bmi_calc/components/icon_item.dart';
import 'package:bmi_calc/components/round_icon_button.dart';
import 'package:bmi_calc/constants.dart';
import 'package:bmi_calc/screens/result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  int weight = 20;
  int height = 50;
  int age = 20;
  String gender = '';
  Color activeCheck = kInActiveCardColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: reusableCard(

                      onPress: (){
                        setState(() {
                          gender = "male";
                        });
                      },
                      colour: gender =="male" ? kActiveCardColor : kInActiveCardColor,
                  cardChild: iconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                )),
                Expanded(
                    child: reusableCard(

                      onPress: (){
                        setState(() {
                          gender = "female";
                        });
                      },
                      colour: gender =="female" ? kActiveCardColor : kInActiveCardColor,
                  cardChild: iconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ))
              ],
            )),
            Expanded(
                child: reusableCard(
                  colour: kInActiveCardColor,
                  onPress: (){

                  },
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: kLabelStyle,
                      ),
                      SizedBox(height: 5.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                              height.toString(),
                            style: kNumberTextStyle,
                          ),
                          Text('cm',
                            style: kLabelStyle,
                          ),

                        ],
                      ),
                      SliderTheme(
                          data: SliderTheme.of(context).copyWith(

                          ),
                          child: Slider(
                              value: height.toDouble(),
                              min: 10,
                              max: 100,
                              onChanged: (double value){
                                setState(() {
                                  height = value.round();
                                });
                              }
                          )
                      )
                    ],
                  ),
                )
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: reusableCard(
                      colour: kInActiveCardColor,
                      onPress: (){

                      },
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('WEIGHT',
                        style: kLabelStyle,
                      ),
                      Text(weight.toString(),
                        style: kNumberTextStyle,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          roundIconButton(
                              iconData: FontAwesomeIcons.plus,
                              onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              }),
                          SizedBox(
                            width: 5.0,
                          ),
                          roundIconButton(
                              iconData: FontAwesomeIcons.minus,
                              onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              })
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: reusableCard(
                      colour: kInActiveCardColor,
                      onPress: (){

                      },
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('AGE',
                        style: kLabelStyle,
                      ),
                      Text(age.toString(),
                      style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          roundIconButton(
                            iconData: FontAwesomeIcons.plus,
                            onPressed: (){
                              setState(() {
                                age++;

                              });
                            },
                          ),
                          SizedBox(width: 5.0,),
                          roundIconButton(
                            iconData: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                                age--;

                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ))
              ],
            )),
            bottom_Button(
              onTap: (){
                calculator_brain calc = new calculator_brain(height, weight);

                String bResult = calc.bmi_result();
                String bStatus = calc.result_status();
                String bWords = calc.result_words();

                Navigator.push(
                  context, MaterialPageRoute(builder: (context){

                  return bmiResult(result: bResult, status: bStatus,words: bWords, );

                }),
                );
              },
              label: "CALCULATE",
            )
          ],
        ));
  }
}





class reusableCard extends StatelessWidget {
  final Widget cardChild;
  final void Function() onPress ;
  final Color colour;
  const reusableCard({Key? key, required this.cardChild, required this.colour,  required this.onPress}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(7.0)
        ),
      ),
    );
  }
}
