import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/ProviderOne.dart';

class AllBorderSlider extends StatefulWidget {
  const AllBorderSlider({Key? key}) : super(key: key);

  @override
  State<AllBorderSlider> createState() => _AllBorderSliderState();
}

class _AllBorderSliderState extends State<AllBorderSlider> {
  @override
  Widget build(BuildContext context) {
    var borderState = Provider.of<ProviderOne>(context);
    double allBorderValue = borderState.allBorderValue;

    return Slider(
      value: allBorderValue,
      min: 0,
      max: 250,
      onChanged: (double value) {
        borderState.changeAllBorderValue(value);
      },
    );
  }
}
