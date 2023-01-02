import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../main.dart';

class PageSecond extends ConsumerWidget {
  const PageSecond({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            ref.read(showAppBar.notifier).state = true;

            Navigator.pop(context);
          },
          child: const Text('Back to PageFirst'),
        ),
        Text(ref.watch(showAppBar) ? 'Show' : 'Not Show'),
      ],
    );
  }
}
