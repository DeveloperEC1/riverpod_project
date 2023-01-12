import 'dart:async';
import 'package:flutter/material.dart';
import '../../../data/models/stream_model.dart';

class ProviderFirst extends ChangeNotifier {
  final StreamController<StreamModel> _streamController =
      StreamController<StreamModel>();

  String _fruit = 'Unknown';

  String get fruitGet => _fruit;

  StreamController<StreamModel> get streamControllerGet => _streamController;

  void setFruit(String fruit) {
    _fruit = fruit;
    notifyListeners();
  }
}
