import 'package:border_radius_previewer/widgets/global/DisplayInputs.dart';
import 'package:border_radius_previewer/widgets/global/DisplayRadius.dart';
import 'package:flutter/cupertino.dart';

class PreviewerScreen extends StatefulWidget {
  const PreviewerScreen({Key? key}) : super(key: key);

  @override
  State<PreviewerScreen> createState() => _PreviewerScreenState();
}

class _PreviewerScreenState extends State<PreviewerScreen> {
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
