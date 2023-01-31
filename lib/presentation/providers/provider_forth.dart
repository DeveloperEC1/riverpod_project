import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_project/data/models/activities_model.dart';
import 'package:riverpod_project/data/models/forth_model/forth_model.dart';
import 'package:riverpod_project/object_box.dart';
import '../../../data/models/stream_model.dart';
import '../../data/data_resources/remotes/rest_client_repository.dart';

final providerForth =
    StateNotifierProvider.autoDispose<ProviderForth, ForthModel>(
        (ref) => ProviderForth());

class ProviderForth extends StateNotifier<ForthModel> {
  ProviderForth() : super(const ForthModel()) {
    initListeners();
    getAllActivities();
  }

  StreamController<StreamModel> streamController = StreamController.broadcast();
  TextEditingController textEditingController = TextEditingController();
  RestClientRepository restClientRepository = RestClientRepository();

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
    state = state.copyWith(fruit: 'Unknown', activity: "");
  }

  void setFruit(String fruit) {
    state = state.copyWith(fruit: fruit);
  }

  void printValue() {
    if (kDebugMode) {
      print("Check1");
    }
  }

  void getAllActivities() {
    restClientRepository.getAllActivities().then(
          (value) => {
            handleGetAllActivitiesResult(value),
          },
        );
  }

  void handleGetAllActivitiesResult(ActivitiesModel activitiesModel) {
    state = state.copyWith(activity: activitiesModel.activity);

    ActivitiesModel? activitiesModelVar = ObjectBox.getUserDataObjectBox();
    activitiesModelVar = activitiesModel;
    ObjectBox.putUserData(activitiesModelVar);

    if (kDebugMode) {
      print(ObjectBox.getUserDataObjectBox()?.activity);
    }
  }

  @override
  void dispose() {
    streamController.close();
    textEditingController.dispose();

    super.dispose();
  }
}
