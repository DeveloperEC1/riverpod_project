import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_project/data/models/stream_model.dart';
import '../../main.dart';
import '../providers/provider_first.dart';

class PageSecond extends ConsumerWidget {
  const PageSecond({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerFirstWatch = ref.watch(providerFirst);

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
            providerFirstWatch.streamController.add(StreamModel('init_data'));
          },
          child: const Text('Update fruit'),
        ),
        Text(ref.watch(showAppBar) ? 'Show' : 'Not Show'),
      ],
    );
  }
}
