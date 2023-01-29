import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_project/data/models/activities_model.dart';
import 'package:riverpod_project/data/models/forth_model/forth_model.dart';
import 'package:riverpod_project/data/models/user_data_model.dart';
import 'package:riverpod_project/object_box.dart';
import '../../../data/models/stream_model.dart';
import '../../data/data_resources/remotes/rest_client_repository.dart';

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
    state = state.copyWith(fruit: 'Unknown');
  }

  void setFruit(String fruit) {
    state = state.copyWith(fruit: fruit);
  }

  void getAllActivities() {
    restClientRepository.getAllActivities().then(
          (value) => {
            handleGetAllActivitiesResult(value),
          },
        );
  }

  void handleGetAllActivitiesResult(ActivitiesModel activitiesModel) {
    UserDataModel? userDataModelVar = ObjectBox.getUserDataObjectBox();
    if (kDebugMode) {
      print(userDataModelVar?.activity);
    }

    if (userDataModelVar == null) {
      state = state.copyWith(activity: activitiesModel.activity);
    } else {
      state = state.copyWith(activity: userDataModelVar.activity);
    }

    userDataModelVar?.activity = activitiesModel.activity;
    ObjectBox.putUserData(userDataModelVar!);

    if (kDebugMode) {
      print(userDataModelVar.activity);
    }
  }

  @override
  void dispose() {
    streamController.close();
    textEditingController.dispose();

    super.dispose();
  }
}
