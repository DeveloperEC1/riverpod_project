import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_project/presentation/pages/page_forth.dart';
import 'presentation/pages/page_second.dart';
import 'presentation/pages/page_third.dart';
import 'object_box.dart';

final showAppBar = StateProvider<bool>((ref) => true);

late ObjectBox objectBox;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  objectBox = await ObjectBox.create();

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
        '/': (context) => const PageForth(),
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
