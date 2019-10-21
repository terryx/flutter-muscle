import 'package:flutter/material.dart';
import '../widgets/pricing_text.dart';

class PricingContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: <Widget>[
          PricingText(symbol: r'S$', text: r'$100,000.00'),
          PricingText(symbol: 'SGD', text: r'123,000.00SGD'),
        ],
      ),
    );
  }
}