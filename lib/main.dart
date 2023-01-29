import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'data/models/forth_model/forth_model.dart';
import 'presentation/pages/page_first.dart';
import 'presentation/pages/page_second.dart';
import 'presentation/pages/page_third.dart';
import 'presentation/providers/provider_first.dart';
import 'presentation/providers/provider_forth.dart';

final providerFirst =
    ChangeNotifierProvider.autoDispose((ref) => ProviderFirst());
final providerForth =
    StateNotifierProvider.autoDispose<ProviderForth, ForthModel>(
        (ref) => ProviderForth());
final showAppBar = StateProvider<bool>((ref) => true);

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
        '/page_third': (context) => const PageThird(),
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
