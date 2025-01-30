import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Setting Screen"),
      ),
      child: Center(
          child: CupertinoButton.filled(
              child: Text(
                "Logout",
              ),
              onPressed: () => _openAlert(context))),
    );
  }
}

void _openAlert(BuildContext context) {
  showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text("Are you sure to logout?"),
          actions: [
            CupertinoDialogAction(
              child: Text("Yes"),
              onPressed: () => Navigator.pop(context),
            ),
            CupertinoDialogAction(
              child: Text("No"),
              onPressed: () => Navigator.pop(context),
            )
          ],
        );
      });
}
