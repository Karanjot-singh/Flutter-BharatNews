import 'package:flutter/material.dart';
import './blocs/theme.dart';
import './blocs/theme_options.dart';
import './views/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    // ignore: missing_required_param
    ChangeNotifierProvider<ThemeChanger>(
      create:(_) => ThemeChanger(darkTheme),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeChanger= Provider.of<ThemeChanger>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: themeChanger.getTheme(),
      home: Home(),
    );
  }
}
