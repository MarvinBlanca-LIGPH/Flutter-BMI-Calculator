import 'package:bmi_calculator/constants.dart';
import 'package:get/get.dart';

class BMIData extends GetxController {
  var _selectedGender = Gender.male.obs;
  var _height = 180.obs;
  var _weight = 60.obs;
  var _age = 19.obs;

  void setGender(var gender) {
    _selectedGender.value = gender;
  }

  get gender => _selectedGender;

  get height => _height;

  void setHeight(var height) {
    _height.value = height;
  }

  get weight => _weight;

  void decreaseWeight() {
    _weight--;
  }

  void increaseWeight() {
    _weight++;
  }

  get age => _age;

  void decreaseAge() {
    _age--;
  }

  void increaseAge() {
    _age++;
  }
}
