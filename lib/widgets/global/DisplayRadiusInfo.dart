import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/ProviderOne.dart';

class DisplayRadiusInfo extends StatefulWidget {
  const DisplayRadiusInfo({Key? key}) : super(key: key);

  @override
  State<DisplayRadiusInfo> createState() => _DisplayRadiusInfoState();
}

class _DisplayRadiusInfoState extends State<DisplayRadiusInfo> {
  @override
  Widget build(BuildContext context) {
    var borderState = context.watch<ProviderOne>();
    var topLeftBorderValue = borderState.borderValues['topLeftBorderValue']!;
    var topRightBorderValue = borderState.borderValues['topRightBorderValue']!;
    var bottonLeftBorderValue =
        borderState.borderValues['bottonLeftBorderValue']!;
    var bottonRightBorderValue =
        borderState.borderValues['bottonRightBorderValue']!;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Top Left: ${topRightBorderValue.floor()}"),
            SizedBox(
              width: 10,
            ),
            Text("Right Left: ${topRightBorderValue.floor()}"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Botton Left: ${topRightBorderValue.floor()}"),
            SizedBox(
              width: 10,
            ),
            Text("Botton Right Left: ${topRightBorderValue.floor()}"),
          ],
        )
      ],
    );
  }
}
