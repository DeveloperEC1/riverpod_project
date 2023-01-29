import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../providers/provider_third.dart';
import 'dart:async';

class PageThird extends HookConsumerWidget {
  const PageThird({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerThird = ProviderThird();

    useEffect(() {
      if (kDebugMode) {
        print(providerThird.showData.value);
      }

      Timer(const Duration(seconds: 2), () {
        providerThird.showData.value = true;
      });

      return null;
    }, [providerThird.showData.value]);

    return providerThird.showData.value
        ? Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  providerThird.counter.value++;
                },
                child: Text('${providerThird.counter.value}'),
              ),
            ],
          )
        : Container();
  }
}
