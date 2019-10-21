import 'package:flutter/material.dart';


class PricingText extends StatelessWidget {
  const PricingText({this.symbol, this.text});

  final String symbol;
  final String text;

  final double _numberFontSize = 32.0;
  final double _symbolFontSize = 16.0;

  Widget _buildNumber() {
    final value = text.replaceAll(symbol, '').trim();

    return Text(
      value,
      style: TextStyle(
        fontSize: _numberFontSize,
      ),
    );
  }

  Widget _buildSymbol() {
    return Align(
      heightFactor: 1.8,
      alignment: Alignment.topLeft,
      child: Text(
        symbol,
        style: TextStyle(
          fontSize: _symbolFontSize,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = [];

    /// Walk the end of text to determine symbol initial position
    /// Negative value is possible so it is not ideal to search in front
    final int lastNumber = num.tryParse(text[text.length - 1]) ?? null;
    if (lastNumber == null) {
      children.add(_buildNumber());
      children.add(_buildSymbol());
    } else {
      children.add(_buildSymbol());
      children.add(_buildNumber());
    }

    return Container(
      child: Row(children: children),
    );
  }
}
