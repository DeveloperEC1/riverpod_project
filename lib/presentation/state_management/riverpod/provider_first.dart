import 'package:flutter/material.dart';
import 'dart:async';
import '../../../data/models/stream_model.dart';

class ProviderFirst extends ChangeNotifier {
  late StreamController<StreamModel> streamController;
  late TextEditingController textEditingController;
  String _fruit = 'Unknown';

  ProviderFirst() {
    streamController = StreamController<StreamModel>();
    textEditingController = TextEditingController();
  }

  String get fruitGet => _fruit;

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
