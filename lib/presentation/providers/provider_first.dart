import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:async';
import '../../../data/models/stream_model.dart';

final providerFirst =
    ChangeNotifierProvider.autoDispose((ref) => ProviderFirst());

class ProviderFirst extends ChangeNotifier {
  StreamController<StreamModel> streamController = StreamController.broadcast();
  TextEditingController textEditingController = TextEditingController();
  String _fruit = 'Unknown';

  ProviderFirst() {
    initListeners();
  }

  String get fruitGet => _fruit;

  void initListeners() {
    streamController.stream.listen((event) {
      if (kDebugMode) {
        print(event.state);
      }

      if (event.state == 'init_data') {
        initData();
      } else if (event.state == 'update_fruit') {
        setFruit('Unknown');
      }
    });
  }

  void initData() {
    _fruit = 'Unknown';
    notifyListeners();
  }

  void setFruit(String fruit) {
    _fruit = fruit;
    notifyListeners();
  }

  @override
  void dispose() {
    streamController.close();
    textEditingController.dispose();

    super.dispose();
  }
}
