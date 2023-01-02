import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../main.dart';

class PageSecond extends ConsumerWidget {
  const PageSecond({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/page_third');
          },
          child: const Text('Go to PageThird'),
        ),
        Text(ref.watch(showAppBar) ? 'Show' : 'Not Show'),
      ],
    );
  }
}
