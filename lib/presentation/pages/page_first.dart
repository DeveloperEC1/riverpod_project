import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../main.dart';

class PageFirst extends ConsumerWidget {
  const PageFirst({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            ref.read(showAppBar.notifier).state = true;

            Navigator.pushNamed(context, '/page_second');
          },
          child: const Text('Go to PageSecond'),
        ),
        Text(ref.watch(showAppBar) ? 'Show' : 'Not Show'),
        ElevatedButton(
          onPressed: () {
            ref.read(providerFirst.notifier).changeFruit('Banana');
          },
          child: Text(ref.watch(providerFirst).fruit),
        ),
      ],
    );
  }
}
