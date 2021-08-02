

class calculator_brain {

  String formularstatement = 'We know that Sam’s weight is 16.9 kg and his height is 105.4 cm. What is Sam’s BMI?\'';

 String f =  "(16.9 kg / 105.4 cm / 105.4 cm ) x 10,000 = 15.2;";

  late int height;
  late int weight;

  calculator_brain(this.height, this.weight);

  late double _bmi ;

  bmi_result(){

    _bmi = (weight / height / height) * 10000;

    return _bmi.toStringAsFixed(1);


  }

  result_status(){

    if(_bmi >=25){

      return'OVERWEIGHT';
    }
    else if(_bmi > 18){
      return 'NORMAL';
    }

    else{
      return 'UNDERWEIGHT';
    }



  }

  result_words(){

    if(_bmi >=25){

      return'Your BMI has Exceeded the Normal level thus you are Over weight. Do well to reduce';
    }
    else if(_bmi > 18){
      return 'Good Job! Your BMI is Normal';
    }

    else{
      return 'Oops! You are under weight, Work Hard to put up more weight';
    }
  }



}