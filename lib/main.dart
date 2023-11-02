import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_theme/home.dart';
import 'package:riverpod_theme/theme/theme.dart';
import 'package:riverpod_theme/theme/themes_provider.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({
    super.key,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeModeState = ref.watch(themesProvider);
    return MaterialApp(
      theme: lightAppTheme,
      darkTheme: darkAppTheme,
      themeMode: themeModeState,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
