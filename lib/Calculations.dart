import 'dart:math';

class Calculations {
  final height;
  final weight;
  Calculations({this.height, this.weight});

  double _bmi;

  String calculate() {
    _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi > 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'YOU hAVE HEIGHER THAN NORMAL START DIETING';
    } else if (_bmi > 18.5) {
      return 'FINE YOU ARE DOING GREAT';
    } else {
      return 'LOL YOU NEED TO EAT MORE';
    }
  }
}
