import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../main.dart';

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
      final providerFirstVar = ref.watch(providerFirst);
      var stream = providerFirstVar.streamControllerGet.stream;

      stream.listen((event) {
        if (event.state == 'update_fruit') {
          providerFirstVar.setFruit('Unknown');
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final providerFirstVar = ref.watch(providerFirst);

    return Column(
      children: [
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
            providerFirstVar.setFruit('Banana');
          },
          child: Text(providerFirstVar.fruitGet),
        ),
      ],
    );
  }
}
