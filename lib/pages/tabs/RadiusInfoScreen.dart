import 'package:border_radius_previewer/widgets/global/DisplayRadius.dart';
import 'package:flutter/material.dart';
import '../../widgets/global/DisplayRadiusInfo.dart';

class RadiusInfoScreen extends StatefulWidget {
  const RadiusInfoScreen({Key? key}) : super(key: key);

  @override
  State<RadiusInfoScreen> createState() => _RadiusInfoScreenState();
}

class _RadiusInfoScreenState extends State<RadiusInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          DisplayRadiusInfo(),
          DisplayRadius(),
        ],
      ),
    );
  }
}
