import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/ProviderOne.dart';

class BorderSlider extends StatefulWidget {
  final String posValue;
  const BorderSlider({Key? key, required this.posValue}) : super(key: key);

  @override
  State<BorderSlider> createState() => _BorderSliderState();
}

class _BorderSliderState extends State<BorderSlider> {
  @override
  Widget build(BuildContext context) {
    var borderState = context.watch<ProviderOne>();
    double chosenBorderValue = borderState.borderValues[widget.posValue]!;

    return Slider(
      value: chosenBorderValue,
      min: 0,
      max: 250,
      onChanged: (double value) {
        borderState.changeBorderValue(
          widget.posValue,
          value,
        );
      },
    );
  }
}
