import 'package:flutter/material.dart';
import 'package:grid_work/utils/colors.dart';
import 'package:grid_work/utils/images.dart';
import 'package:grid_work/utils/strings.dart';
import 'package:grid_work/views/tabs/home/home_screen.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentScreen(),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5.0,
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedItemColor: CustomColors.whiteColor,
        onTap: onItemTapped,
        items: [
          BottomNavigationBarItem(
              backgroundColor: CustomColors.primaryColor,
              icon: SizedBox(
                height: 62,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      Images.home,
                      height: 28.0,
                      width: 28.0,
                    ),
                  ],
                ),
              ),
              label: Str.home),
          BottomNavigationBarItem(
              backgroundColor: CustomColors.primaryColor,
              icon: SizedBox(
                height: 62,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      Images.discover,
                      height: 28.0,
                      width: 28.0,
                    ),
                  ],
                ),
              ),
              label: Str.discover),
          BottomNavigationBarItem(
              backgroundColor: CustomColors.primaryColor,
              icon: Image.asset(
                Images.prime,
                height: 62.0,
                width: 62.0,
              ),
              label: Str.prime),
          BottomNavigationBarItem(
              backgroundColor: CustomColors.primaryColor,
              icon: SizedBox(
                height: 62,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      Images.connection,
                      height: 28.0,
                      width: 28.0,
                    ),
                  ],
                ),
              ),
              label: Str.connect),
          BottomNavigationBarItem(
              backgroundColor: CustomColors.primaryColor,
              icon: SizedBox(
                height: 62,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      Images.club,
                      height: 28.0,
                      width: 28.0,
                    ),
                  ],
                ),
              ),
              label: Str.club)
        ],
      ),
    );
  }

  Widget currentScreen() {
    switch (_currentIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return Container();
      case 2:
        return Container();
      case 3:
        return Container();
      case 4:
        return Container();
      default:
        return Container();
    }
  }

  void onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
