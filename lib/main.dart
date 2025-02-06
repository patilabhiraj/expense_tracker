// import 'package:expenses_app/models/expense.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:expenses_app/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 63, 63, 85),
);

var kdarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(276, 55, 99, 165),
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kdarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: kdarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
      ),
      theme:
          // ignore: deprecated_member_use
          ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kColorScheme.onSecondaryContainer,
                  fontSize: 16),
            ),
      ),
      themeMode: ThemeMode.system,
      home: const Expenses(),
    ),
  );
}
