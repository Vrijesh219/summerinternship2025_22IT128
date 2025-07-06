import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF1E1E1E),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF2D2D2D),
          secondary: Color(0xFF4CAF50),
        ),
      ),
      home: const Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _input = '0';
  String _result = '';
  String _operation = '';
  double _num1 = 0;
  bool _isNewNumber = true;

  void _onNumberPress(String number) {
    setState(() {
      if (_isNewNumber) {
        _input = number;
        _isNewNumber = false;
      } else {
        if (_input == '0') {
          _input = number;
        } else {
          _input += number;
        }
      }
    });
  }

  void _onOperationPress(String operation) {
    setState(() {
      if (_operation.isNotEmpty && !_isNewNumber) {
        _calculateResult();
      }
      _num1 = double.parse(_input);
      _operation = operation;
      _isNewNumber = true;
    });
  }

  void _calculateResult() {
    double num2 = double.parse(_input);
    double result = 0;

    switch (_operation) {
      case '+':
        result = _num1 + num2;
        break;
      case '-':
        result = _num1 - num2;
        break;
      case '×':
        result = _num1 * num2;
        break;
      case '÷':
        if (num2 != 0) {
          result = _num1 / num2;
        } else {
          _input = 'Error';
          _isNewNumber = true;
          return;
        }
        break;
    }

    setState(() {
      _input = result.toString();
      if (_input.endsWith('.0')) {
        _input = _input.substring(0, _input.length - 2);
      }
      _operation = '';
      _isNewNumber = true;
    });
  }

  void _clear() {
    setState(() {
      _input = '0';
      _result = '';
      _operation = '';
      _num1 = 0;
      _isNewNumber = true;
    });
  }

  Widget _buildButton(String text, {Color? color, VoidCallback? onPressed}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? Theme.of(context).colorScheme.primary,
            padding: const EdgeInsets.all(24.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: onPressed ?? () => _onNumberPress(text),
          child: Text(
            text,
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                alignment: Alignment.bottomRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      _operation.isNotEmpty ? '$_num1 $_operation' : '',
                      style: const TextStyle(fontSize: 24, color: Colors.grey),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _input,
                      style: const TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      _buildButton('C', color: Colors.red, onPressed: _clear),
                      _buildButton(
                        '±',
                        onPressed: () {
                          setState(() {
                            if (_input != '0') {
                              if (_input.startsWith('-')) {
                                _input = _input.substring(1);
                              } else {
                                _input = '-$_input';
                              }
                            }
                          });
                        },
                      ),
                      _buildButton(
                        '%',
                        onPressed: () {
                          setState(() {
                            _input = (double.parse(_input) / 100).toString();
                            if (_input.endsWith('.0')) {
                              _input = _input.substring(0, _input.length - 2);
                            }
                          });
                        },
                      ),
                      _buildButton(
                        '÷',
                        color: Theme.of(context).colorScheme.secondary,
                        onPressed: () => _onOperationPress('÷'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      _buildButton('7'),
                      _buildButton('8'),
                      _buildButton('9'),
                      _buildButton(
                        '×',
                        color: Theme.of(context).colorScheme.secondary,
                        onPressed: () => _onOperationPress('×'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      _buildButton('4'),
                      _buildButton('5'),
                      _buildButton('6'),
                      _buildButton(
                        '-',
                        color: Theme.of(context).colorScheme.secondary,
                        onPressed: () => _onOperationPress('-'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      _buildButton('1'),
                      _buildButton('2'),
                      _buildButton('3'),
                      _buildButton(
                        '+',
                        color: Theme.of(context).colorScheme.secondary,
                        onPressed: () => _onOperationPress('+'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      _buildButton('0'),
                      _buildButton(
                        '.',
                        onPressed: () {
                          setState(() {
                            if (!_input.contains('.')) {
                              _input += '.';
                            }
                          });
                        },
                      ),
                      _buildButton(
                        '=',
                        color: Theme.of(context).colorScheme.secondary,
                        onPressed: _calculateResult,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
