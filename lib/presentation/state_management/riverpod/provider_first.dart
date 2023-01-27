import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import '../../../data/models/stream_model.dart';

class ProviderFirst extends ChangeNotifier {
  late StreamController<StreamModel> streamController;
  late TextEditingController textEditingController;
  String _fruit = 'Unknown';

  ProviderFirst() {
    streamController = StreamController.broadcast();
    textEditingController = TextEditingController();

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
    super.dispose();

    streamController.close();
    textEditingController.dispose();
  }
}
