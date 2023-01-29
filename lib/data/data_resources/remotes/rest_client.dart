import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_project/data/models/activities_model.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://www.boredapi.com/api/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("activity")
  Future<ActivitiesModel> getAllActivities();
}
