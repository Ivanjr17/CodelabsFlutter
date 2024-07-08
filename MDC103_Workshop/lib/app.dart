import 'package:flutter/material.dart';
import 'supplemental/cut_corners_border.dart';

import 'home.dart';
import 'login.dart';

import 'colors.dart';

// todo: Convert ShrineApp to stateful widget (104)
class ShrineApp extends StatelessWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Shrine',
        initialRoute: '/login',
        routes: {
          '/login': (BuildContext context) => const LoginPage(),
          // todo: Change to a Backdrop with a HomePage frontLayer (104)
          '/': (BuildContext context) => const HomePage(),
          // todo: Make currentCategory field take _currentCategory (104)
          // todo: Pass _currentCategory for frontLayer (104)
          // todo: Change backLayer field value to CategoryMenuPage (104)
        },
        // todo: Customize the theme (103)
        theme: _kShrinetheme);
  }
}

// todo: Build a Shrine Theme (103)
TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline5: base.headlineSmall!.copyWith(
          fontWeight: FontWeight.w500,
        ),
        headline6: base.headlineMedium!.copyWith(
          fontSize: 18.0,
        ),
        caption: base.caption!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
        bodyText1: base.bodyText1!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: kShrineBrown900,
        bodyColor: kShrineBrown900,
      );
}

final ThemeData _kShrinetheme = _buildShrineTheme();

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: kShrinePink100,
      onPrimary: kShrineBrown900,
      secondary: kShrineBrown900,
      error: kShrineErrorRed,
    ),
    // todo: Add the text themes (103)
    textTheme: _buildShrineTextTheme(base.textTheme),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: kShrinePink100,
    ),
    // todo: Add the icon themes (103)
    // todo: Decorate the inputs (103)
    inputDecorationTheme: const InputDecorationTheme(
      border: CutCornersBorder(),
      focusedBorder: CutCornersBorder(
        borderSide: BorderSide(
          color: kShrineBrown900,
          width: 2.0,
        ),
      ),
      floatingLabelStyle: TextStyle(
        color: kShrineBrown900,
      ),
    ),
  );
}
// todo: Build a Shrine Text Theme (103)
