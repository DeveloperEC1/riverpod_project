import 'package:objectbox/objectbox.dart';

@Entity()
class UserDataModel {
  @Id()
  int id = 0;

  String activity = "";
  String type = "";
  int participants = 0;
  double price = 0.0;
  String link = "";
  String key = "";
  double accessibility = 0.0;
}
