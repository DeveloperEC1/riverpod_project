import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_project/data/models/forth_model/forth_model.dart';
import '../../../data/models/stream_model.dart';

class ProviderForth extends StateNotifier<ForthModel> {
  ProviderForth() : super(const ForthModel()) {
    initListeners();
  }

  StreamController<StreamModel> streamController = StreamController.broadcast();
  TextEditingController textEditingController = TextEditingController();

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
    state = state.copyWith(fruit: 'Unknown');
  }

  void setFruit(String fruit) {
    state = state.copyWith(fruit: fruit);
  }

  @override
  void dispose() {
    streamController.close();
    textEditingController.dispose();

    super.dispose();
  }
}
