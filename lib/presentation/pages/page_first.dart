import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../main.dart';
import '../providers/provider_first.dart';

class PageFirst extends ConsumerStatefulWidget {
  const PageFirst({Key? key}) : super(key: key);

  @override
  ConsumerState<PageFirst> createState() => _PageFirstState();
}

class _PageFirstState extends ConsumerState<PageFirst> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final providerFirstRead = ref.read(providerFirst.notifier);
      providerFirstRead.initListeners();
    });
  }

  @override
  Widget build(BuildContext context) {
    final providerFirstWatch = ref.watch(providerFirst);
    final providerFirstRead = ref.read(providerFirst.notifier);

    return Column(
      children: [
        TextField(controller: providerFirstRead.textEditingController),
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
            providerFirstRead.setFruit('Banana');
          },
          child: Text(providerFirstWatch.fruitGet),
        ),
      ],
    );
  }
}
