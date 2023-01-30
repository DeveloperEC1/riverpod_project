import 'package:objectbox/objectbox.dart';

@Entity()
class ActivitiesModel {
  @Id()
  int id = 0;

  String activity = "";
  String type = "";
  int participants = 0;
  String link = "";
  String key = "";

  ActivitiesModel();

  ActivitiesModel.fromJson(Map<String, dynamic> json) {
    activity = json['activity'];
    type = json['type'];
    participants = json['participants'];
    link = json['link'];
    key = json['key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['activity'] = activity;
    data['type'] = type;
    data['participants'] = participants;
    data['link'] = link;
    data['key'] = key;
    return data;
  }
}
