import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../main.dart';
import '../state_management/riverpod/provider_third.dart';

class PageThird extends HookConsumerWidget {
  const PageThird({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerThird = ProviderThird();

    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            providerThird.counter.value++;
          },
          child: Text('${providerThird.counter.value}'),
        ),
      ],
    );
  }
}
