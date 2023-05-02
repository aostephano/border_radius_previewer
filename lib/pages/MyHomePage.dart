import 'package:border_radius_previewer/pages/tabs/MyFirstScreen.dart';
import 'package:border_radius_previewer/pages/tabs/MySecondScreen.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  late PageController _pageController;

  //Initiate Page Controller var
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  //Dispose Page Controller var
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Border Radius Previewer")),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: const <Widget>[
            MyFirstScreen(),
            MySecondScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        mainAxisAlignment: MainAxisAlignment.center,
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: Text('Radius'),
            icon: Icon(Icons.home),
          ),
          BottomNavyBarItem(
            title: Text('Something'),
            icon: Icon(Icons.access_alarm),
          ),
        ],
      ),
    );
  }
}
