import 'package:cupertino_app/category_screen.dart';
import 'package:cupertino_app/home_screen.dart';
import 'package:cupertino_app/my_route.dart';
import 'package:flutter/cupertino.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: "Cupertino App",
      theme: const CupertinoThemeData(
        primaryColor: CupertinoColors.systemBlue,
      ),
      initialRoute: MyRoute.home.name,
      routes: {
        MyRoute.home.name: (context) => const HomeScreen(),
        MyRoute.category.name: (context) => CategoryScreen(
              selectedCategory:
                  ModalRoute.of(context)?.settings.arguments as String,
            )
      },
    );
  }
}
