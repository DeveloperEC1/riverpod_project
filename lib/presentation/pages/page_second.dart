import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_project/data/models/stream_model.dart';
import '../../main.dart';

class PageSecond extends ConsumerWidget {
  const PageSecond({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerFirstVar = ref.watch(providerFirst);

    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/page_third');
          },
          child: const Text('Go to PageThird'),
        ),
        ElevatedButton(
          onPressed: () {
            providerFirstVar.streamController.add(StreamModel('update_fruit'));
          },
          child: const Text('Update fruit'),
        ),
        Text(ref.watch(showAppBar) ? 'Show' : 'Not Show'),
      ],
    );
  }
}
