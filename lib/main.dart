import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'utils/colors.dart';
import 'utils/constants.dart';
import 'utils/strings.dart';
import 'utils/theme.dart';
import 'views/tabs/dashboard/dashboard.dart';
import 'views/tabs/home/home_screen.dart';

void main() {
  runApp(GridWorkApp(appName: Str.appName));
}

class GridWorkApp extends StatelessWidget {
  final String appName;

  const GridWorkApp({Key? key, required this.appName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: CustomColors.buttonColor,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarColor: CustomColors.secondaryColor,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
        title: appName,
        debugShowCheckedModeBanner: Constants.kDebug,
        theme: lightTheme,
        home: const DashBoard());
  }
}
