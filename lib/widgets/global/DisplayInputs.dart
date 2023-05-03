import 'package:flutter/material.dart';
import 'BorderSlider.dart';

class DisplayInputs extends StatefulWidget {
  const DisplayInputs({Key? key}) : super(key: key);

  @override
  State<DisplayInputs> createState() => _DisplayInputsState();
}

class _DisplayInputsState extends State<DisplayInputs> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Top Left"),
        BorderSlider(posValue: 'topLeftBorderValue'),
        Text("Top Right"),
        BorderSlider(posValue: 'topRightBorderValue'),
        Text("Botton Left"),
        BorderSlider(posValue: 'bottonLeftBorderValue'),
        Text("Botton Right"),
        BorderSlider(posValue: 'bottonRightBorderValue'),
      ],
    );
  }
}
