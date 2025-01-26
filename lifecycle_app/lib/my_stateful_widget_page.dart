import 'package:flutter/material.dart';
import 'package:lifecycle_app/my_stateless_widget_page.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({
    super.key,
  });

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    debugPrint("widget-initState");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    debugPrint("widget-didChangeDependencies");
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    debugPrint("widget-setState");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    debugPrint("widget-dispose");
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _nextPage() {
    Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const MyStatelessWidget(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("widget-build");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Lifecycle App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton.icon(
              onPressed: _incrementCounter,
              icon: const Icon(Icons.add),
              label: Text("Add this number ($_counter)"),
            ),
            const SizedBox.square(dimension: 20),
            OutlinedButton.icon(
              onPressed: _nextPage,
              icon: const Icon(Icons.next_plan_outlined),
              label: const Text("Replace page to other page"),
            ),
          ],
        ),
      ),
    );
  }
}
