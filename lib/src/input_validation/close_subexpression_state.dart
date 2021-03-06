import 'package:advanced_calculation/src/input_validation/error_state.dart';
import 'package:advanced_calculation/src/input_validation/operator_state.dart';
import 'package:advanced_calculation/src/input_validation/pattern.dart';
import 'package:advanced_calculation/src/input_validation/state.dart';
import 'error_state.dart';
import 'next_operand_state.dart';

class CloseSubExpressionState extends State {

  CloseSubExpressionState(int counter,bool multiParam) : super(counter, multiParam);

  @override
  State getNextState(String value){
    State state = ErrorState(this.counter, this.multiParam);

    if(value == ")" && this.counter >= 1){
      state= CloseSubExpressionState(this.counter - 1, this.multiParam);
      //remain in the same state
    }
    else if(Pattern.validBasicOperator.hasMatch(value) || (value == "," && this.multiParam && this.counter > 0)){
      state = OperatorState(this.counter, this.multiParam);
    }
    else if(Pattern.validOperand.hasMatch(value)){
      state = NextOperandState(this.counter, this.multiParam);
    }

    return state;
  }

}