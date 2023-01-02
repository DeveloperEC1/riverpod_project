import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../main.dart';
import '../state_management/riverpod/provider_third.dart';

class PageThird extends HookConsumerWidget {
  const PageThird({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ProviderThird();

    return Column(
      children: [
        Text(ref.watch(showAppBar) ? 'Show' : 'Not Show'),
        ElevatedButton(
          onPressed: () {
            provider.counter.value++;
          },
          child: Text('${provider.counter.value}'),
        ),
      ],
    );
  }
}
