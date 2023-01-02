import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../main.dart';

class PageThird extends HookConsumerWidget {
  const PageThird({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Text(ref.watch(showAppBar) ? 'Show' : 'Not Show'),
      ],
    );
  }
}
