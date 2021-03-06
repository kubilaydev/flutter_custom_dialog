import 'package:flutter/material.dart';

import '../base/view/demo_main_page.dart';
import '../theme/app_theme.dart';

///
class FlutterCustomDialog extends StatelessWidget {
  ///
  FlutterCustomDialog({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: DemoHomePage(),
    );
  }
}
