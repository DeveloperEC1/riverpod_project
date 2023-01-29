import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../main.dart';

class PageForth extends ConsumerWidget {
  const PageForth({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerForthWatch = ref.watch(providerForth);
    final providerForthRead = ref.read(providerForth.notifier);

    return Column(
      children: [
        TextField(controller: providerForthRead.textEditingController),
        ElevatedButton(
          onPressed: () {
            ref.read(showAppBar.notifier).state = false;

            Navigator.pushNamed(context, '/page_second');
          },
          child: const Text('Go to PageSecond'),
        ),
        Text(ref.watch(showAppBar) ? 'Show' : 'Not Show'),
        ElevatedButton(
          onPressed: () {
            providerForthRead.setFruit('Banana');
          },
          child: Text(providerForthWatch.fruit),
        ),
        Text(providerForthWatch.activity),
      ],
    );
  }
}
