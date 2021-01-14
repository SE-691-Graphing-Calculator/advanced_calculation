import 'package:advanced_calculation/src/translator/translate_pattern.dart';

class ExpressionParser{
  String padTokens(String expression){
      String result;
      result = expression. replaceAll("+", " + ");
      result = result.replaceAll("−", " − ");
      result = result.replaceAll("*", " * ");
      result = result.replaceAll("/", " / ");
      result = result.replaceAll("^", " ^ ");
      result = result.replaceAll("(", " ( ");
      result = result.replaceAll(")", " ) ");
      result = result.replaceAll(",", " , ");
      result = result.replaceAll("𝑥", " 𝑥 ");
      result = result.replaceAll("𝜋", " 𝜋 ");
      result = result.replaceAll("𝑒", " 𝑒 ");
      result = result.replaceAll("²", " ² ");
      result = result.replaceAll("⁻¹", " ⁻¹ ");
      result = result.replaceAll(TranslatePattern.spacing, " ");
      return result;
  }
}