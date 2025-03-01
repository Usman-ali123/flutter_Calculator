 import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:maheer_khan/constant.dart';
import 'package:maheer_khan/components/my_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String userinp = '';
  String ans = '';

  /// Clears the input and answer
  void clearInput() {
    setState(() {
      userinp = '';
      ans = '';
    });
  }

  /// Handles number and operator button presses
  void onButtonPress(String value) {
    setState(() {
      userinp += value;
    });
  }

  /// Evaluates the mathematical expression
  void evaluateExpression() {
    try {
      Parser p = Parser();
      Expression exp = p.parse(userinp);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);

      setState(() {
        ans = eval.toString();
      });
    } catch (e) {
      setState(() {
        ans = "Error";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text('Calculator', style: headingTextStyle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(userinp, style: headingTextStyle),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(ans, style: headingTextStyle),
          ),
          _buildButtonRow(['A/c', '+/-', '%', '/'], [clearInput, onButtonPress, onButtonPress, onButtonPress]),
          _buildButtonRow(['7', '8', '9', 'x'], [onButtonPress, onButtonPress, onButtonPress, () => onButtonPress('*')]),
          _buildButtonRow(['4', '5', '6', '-'], [onButtonPress, onButtonPress, onButtonPress, onButtonPress]),
          _buildButtonRow(['1', '2', '3', '+'], [onButtonPress, onButtonPress, onButtonPress, onButtonPress]),
          _buildButtonRow(['0', '.', 'end', '='], [onButtonPress, onButtonPress, onButtonPress, evaluateExpression]),
        ],
      ),
    );
  }

  /// Creates a row of buttons dynamically
  Widget _buildButtonRow(List<String> titles, List<Function> actions) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        titles.length,
        (index) => MyButton(
          title: titles[index],
          onpress: () => actions[index](titles[index]),
          color: (titles[index] == '=' || titles[index] == 'A/c') ? orangeColor : grayColor,
        ),
      ),
    );
  }
}
