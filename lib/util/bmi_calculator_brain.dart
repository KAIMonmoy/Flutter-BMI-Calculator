class BMICalculatorBrain {
  BMICalculatorBrain({this.height, this.weight}) {
    double heightInMeter = height / 100.0;
    _bmi = weight / (heightInMeter * heightInMeter);
  }

  final int height;
  final int weight;

  double _bmi;

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight.\nTry to exercise more!';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight.\nGood Job!';
    } else {
      return 'You have a lower than normal body weight.\nYou should eat a bit more!';
    }
  }
}
