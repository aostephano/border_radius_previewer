import 'package:flutter/material.dart';

import '../../widgets/global/DisplayInputs.dart';
import '../../widgets/global/DisplayRadius.dart';

class MyFirstScreen extends StatelessWidget {
  const MyFirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DisplayRadius(),
        DisplayInputs(),
      ],
    );
  }
}
