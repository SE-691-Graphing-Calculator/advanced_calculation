// This class is part of the state pattern and inherits from abstract State class
// It represents the Error state for the calculator

import 'package:advanced_calculation/src/input_validation/parse_location.dart';
import 'package:advanced_calculation/src/input_validation/state.dart';
import 'package:advanced_calculation/src/input_validation/validate_function.dart';

import 'validate_function.dart';

class ErrorState extends State {

  @override
  ParseLocation getNextState(String value, int counterValue, bool isMultiParam) {
    return ParseLocation(ErrorState(), counterValue);
  }

}