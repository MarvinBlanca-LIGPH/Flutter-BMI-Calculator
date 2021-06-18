import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';

class BMIData extends ChangeNotifier {
  Gender _selectedGender = Gender.male;
  int _height = 180;
  int _weight = 60;
  int _age = 19;

  void setGender(Gender gender) {
    _selectedGender = gender;
    notifyListeners();
  }

  Gender get gender => _selectedGender;

  int get height => _height;

  void setHeight(int height) {
    _height = height;
    notifyListeners();
  }

  int get weight => _weight;

  void decreaseWeight() {
    _weight--;
    notifyListeners();
  }

  void increaseWeight() {
    _weight++;
    notifyListeners();
  }

  int get age => _age;

  void decreaseAge() {
    _age--;
    notifyListeners();
  }

  void increaseAge() {
    _age++;
    notifyListeners();
  }
}
