import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    var borderState = context.watch<ProviderOne>();
    var topLeftBorderValue = borderState.borderValues['topLeftBorderValue']!;
    var topRightBorderValue = borderState.borderValues['topRightBorderValue']!;
    var bottonLeftBorderValue =
        borderState.borderValues['bottonLeftBorderValue']!;
    var bottonRightBorderValue =
        borderState.borderValues['bottonRightBorderValue']!;

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
                  color: Color(0xff7c94b6),
                  image: DecorationImage(
                    image: NetworkImage(
                        // 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                        'https://i.imgur.com/91ySMfp.jpg'),
                    fit: BoxFit.fill,
                  ),
                  border: Border(
                    top: BorderSide(
                      width: 5,
                      color: Colors.black,
                    ),
                    bottom: BorderSide(
                      width: 5,
                      color: Colors.black,
                    ),
                    left: BorderSide(
                      width: 5,
                      color: Colors.black,
                    ),
                    right: BorderSide(
                      width: 5,
                      color: Colors.black,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(topLeftBorderValue),
                    topRight: Radius.circular(topRightBorderValue),
                    bottomLeft: Radius.circular(bottonLeftBorderValue),
                    bottomRight: Radius.circular(bottonRightBorderValue),
                  )),
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
