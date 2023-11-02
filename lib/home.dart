import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_theme/theme/themes_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeModeState = ref.watch(themesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Theme'),
        actions: [
          IconButton(
              icon: Icon(
                themeModeState == ThemeMode.light
                    ? Icons.dark_mode
                    : Icons.light_mode,
              ),
              onPressed: () => ref.read(themesProvider.notifier).changeTheme(
                  themeModeState == ThemeMode.light ? true : false)),
        ],
      ),
    );
  }
}
