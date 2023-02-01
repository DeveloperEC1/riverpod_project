import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../main.dart';
import '../providers/provider_forth.dart';

class PageForth extends ConsumerStatefulWidget {
  const PageForth({Key? key}) : super(key: key);

  @override
  ConsumerState<PageForth> createState() => _PageForthState();
}

class _PageForthState extends ConsumerState<PageForth> {

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final providerForthRead = ref.read(providerForth.notifier);
      providerForthRead.initData();
      providerForthRead.initListeners();
      providerForthRead.getAllActivities();
    });
  }

  @override
  Widget build(BuildContext context) {
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
