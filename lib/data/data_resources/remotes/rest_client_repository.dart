import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_project/data/models/activities_model.dart';
import 'rest_client.dart';

class RestClientRepository {
  static final RestClientRepository _singleton =
      RestClientRepository.internal();

  factory RestClientRepository() => _singleton;

  RestClientRepository.internal();

  final client = RestClient(Dio());

  Future<ActivitiesModel> getAllActivities() async {
    // ProviderScope.containerOf(context, listen: false).read(providerForth.notifier).printValue();

    ActivitiesModel activitiesModel = ActivitiesModel();

    await client
        .getAllActivities()
        .then((value) => activitiesModel = value)
        .catchError((Object obj) {
      switch (obj.runtimeType) {
        case DioError:
          final res = (obj as DioError).response;
          if (kDebugMode) {
            print("${res?.statusMessage}");
          }
          break;
      }

      throw Exception("Error");
    });

    return activitiesModel;
  }
}
