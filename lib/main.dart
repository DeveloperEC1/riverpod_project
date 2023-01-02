import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_project/presentation.pages/page_first.dart';
import 'package:riverpod_project/presentation.pages/page_second.dart';

final showAppBar = StateProvider<bool>((ref) {
  return true;
});

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const PageFirst(),
        '/page_second': (context) => const PageSecond(),
      },
      builder: (context, child) {
        return Consumer(
          builder: (_, ref, __) {
            return Scaffold(
              appBar: ref.watch(showAppBar)
                  ? AppBar(title: const Text('App Bar'))
                  : null,
              body: child,
            );
          },
        );
      },
    );
  }
}
