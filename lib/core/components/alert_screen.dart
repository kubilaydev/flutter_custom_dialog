import 'dart:ui';

import 'package:flutter/material.dart';

///
class AlertScreen extends StatefulWidget {
  ///
  const AlertScreen(
      {Key? key,
      required this.title,
      required this.description,
      required this.buttonText,
      required this.dialogType})
      : super(key: key);

  ///
  final String title, description, buttonText, dialogType;

  ///
  /// Bu bilgiler dışarıdan alınır ve ikonun içini doldurur.

  /// Uyarı Ekranının yanlardan olan boşluğu
  final double padding = 20;

  /// Avatarın tam yarısının üst tarafa oturması için gereken değer
  final double avatarRadius = 45;

  @override
  _AlertScreenState createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {
  late Color buttonColor;

  late String dialogIcon;

  /// Ne işe yaraduğını giriyor

  static const double padding = 20;
  static const double avatarRadius = 45;

  void setDialogType() {
    if (widget.dialogType == 'warning') {
      buttonColor = Colors.redAccent;
      dialogIcon = 'assets/alert_asset/warning.png';
    } else if (widget.dialogType == 'done') {
      buttonColor = Colors.lightGreen;
      dialogIcon = 'assets/alert_asset/done.png';
    } else if (widget.dialogType == 'info') {
      buttonColor = Colors.blueAccent;
      dialogIcon = 'assets/alert_asset/info.png';
    }
  }

  @override
  void initState() {
    setDialogType();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  ///
  BackdropFilter contentBox(content) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
                left: padding,
                top: avatarRadius + padding,
                right: padding,
                bottom: padding),
            margin: const EdgeInsets.only(top: avatarRadius),
            decoration: BoxDecoration(
              //! YOu can change opacity of Dialog window here
              color: Colors.white.withOpacity(0.75),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(padding),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 22,
                ),
                Text(
                  widget.description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 22,
                      color: Colors.blue,
                      fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: const BoxDecoration(),
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          shape: const StadiumBorder(),
                          primary: buttonColor),
                      child: Text(
                        widget.buttonText,
                        style:
                            const TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    )

                    /*
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(
                              color: buttonColor,
                              width: 1,
                              style: BorderStyle.solid)),
                      child: Text(
                        widget.buttonText,
                        style: TextStyle(fontSize: 18, color: buttonColor),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
*/

                    ),
              ],
            ),
          ),
          Positioned(
            left: padding,
            right: padding,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: avatarRadius,
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.all(Radius.circular(avatarRadius)),
                child: Image.asset(dialogIcon),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
