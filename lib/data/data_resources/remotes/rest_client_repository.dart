import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_project/data/models/activities_model.dart';
import 'rest_client.dart';

class RestClientRepository {
  static final RestClientRepository _singleton =
      RestClientRepository.internal();

  factory RestClientRepository() => _singleton;

  RestClientRepository.internal();

  final logger = Logger();
  final client = RestClient(Dio());

  Future<ActivitiesModel> getAllActivities() async {
    ActivitiesModel activitiesModel = ActivitiesModel();

    await client
        .getAllActivities()
        .then((value) => activitiesModel = value)
        .catchError((Object obj) {
      switch (obj.runtimeType) {
        case DioError:
          final res = (obj as DioError).response;
          logger.e("Got error : ${res?.statusCode} -> ${res?.statusMessage}");
          break;
      }
    });

    return activitiesModel;
  }
}
