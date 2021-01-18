import 'package:flutter/material.dart';
import 'package:telegram_clone/theme/app_theme.dart';
import 'components/telegram_home.dart';

main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelegramHome() ,
      theme: appTheme,
    );
  }
}
