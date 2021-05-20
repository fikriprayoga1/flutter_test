import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_technical_test/util/unit_config.dart';
import 'package:flutter_technical_test/view/view_splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InitSystem(),
    );
  }
}

class InitSystem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UnitConfig(
        MediaQuery.of(context).size.width, MediaQuery.of(context).size.height);

    return ViewSplash();
  }
}