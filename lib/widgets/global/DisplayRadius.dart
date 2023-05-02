import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../providers/ProviderOne.dart';

class DisplayRadius extends StatefulWidget {
  const DisplayRadius({Key? key}) : super(key: key);

  @override
  State<DisplayRadius> createState() => _DisplayRadiusState();
}

class _DisplayRadiusState extends State<DisplayRadius> {
  late double allBorderValue;

  @override
  Widget build(BuildContext context) {
    var borderState = Provider.of<ProviderOne>(context);
    allBorderValue = borderState.allBorderValue;

    return Expanded(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                color: const Color(0xff7c94b6),
                image: const DecorationImage(
                  image: NetworkImage(
                      // 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                      'https://i.imgur.com/91ySMfp.jpg'),
                  fit: BoxFit.fill,
                ),
                border: Border.all(
                  width: 8,
                ),
                borderRadius: BorderRadius.circular(allBorderValue),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
