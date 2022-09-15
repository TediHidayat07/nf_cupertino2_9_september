import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
        title: 'nf_cupertino2_9_september',
        theme: CupertinoThemeData(brightness: Brightness.light),
        home: TampilAlertDialog());
  }
}

class TampilAlertDialog extends StatelessWidget {
  const TampilAlertDialog({Key? key}) : super(key: key);

  void _tampilAlertDialog(context) {
    showCupertinoModalPopup(
        context: context,
        builder: (context) => CupertinoAlertDialog(
              content: const Text(
                'Apakah kamu yakin?',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              actions: [
                CupertinoDialogAction(
                  isDefaultAction: true,
                  child: const Text('Yes'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoDialogAction(
                  isDestructiveAction: true,
                  child: const Text('No'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoButton(
              padding: const EdgeInsets.all(0),
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
              onPressed: () {}),
          backgroundColor: Colors.blue,
          middle: const Text(
            'Appbar Cupertino',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                CupertinoButton(
                    padding: const EdgeInsets.all(0),
                    child: const Icon(
                      CupertinoIcons.profile_circled,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
                CupertinoButton(
                    padding: const EdgeInsets.all(0),
                    child: const Icon(
                      CupertinoIcons.settings,
                      color: Colors.white,
                    ),
                    onPressed: () {})
              ]),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Body pada Cupertino',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 50,
            ),
            CupertinoButton(
                color: Colors.blue,
                child: const Text(
                  'Cupertino Button',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () => _tampilAlertDialog(context))
          ],
        )));
  }
}
