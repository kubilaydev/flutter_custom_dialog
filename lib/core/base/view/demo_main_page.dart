import 'package:flutter/material.dart';
import '../../components/alert_screen.dart';

import '../../components/main_constants.dart';
import '../../components/main_page/custum_dialog_appbar.dart';

///
class DemoHomePage extends StatefulWidget {
  ///
  DemoHomePage({
    Key? key,
  }) : super(key: key);

  ///

  @override
  _DemoHomePageState createState() => _DemoHomePageState();
}

class _DemoHomePageState extends State<DemoHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          // ITS IMPORTANT TO MAKE NEW WIDGETS FOR READABLE CODE as you know
          child: CustomDialogAppBar()),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              /// YOU CAN USE YOUR MAIN CONST where Main_constant.dart file
              /// LIKE HERE ( arrow pointing down )
              padding: appNameMainEdge,

              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.redAccent,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 24),
                        shape: const StadiumBorder()),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const AlertScreen(
                              title: 'UPS! Are you okey?',
                              description: 'You can ask me anything !',
                              buttonText: 'Thanks',
                              dialogType: 'warning',
                            );
                          });
                    },
                    child: const Text('Warning'),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent,
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 24),
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const AlertScreen(
                              title: 'Do you know?',
                              description:
                                  'You can fallow me on Github for support ! ',
                              buttonText: 'Okey!',
                              dialogType: 'info',
                            );
                          });
                    },
                    child: const Text('Info'),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightGreen,
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 24),
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const AlertScreen(
                              title: 'Its done!',
                              description: 'Successfully completed.',
                              buttonText: 'Great!',
                              dialogType: 'done',
                            );
                          });
                    },
                    child: const Text('Done'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
