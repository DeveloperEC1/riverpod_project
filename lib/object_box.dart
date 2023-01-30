import 'package:objectbox/objectbox.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'data/models/activities_model.dart';

import 'objectbox.g.dart';

class ObjectBox {
  late final Store store;
  static late final Box<ActivitiesModel> activitiesBox;

  ObjectBox._create(this.store) {
    activitiesBox = Box<ActivitiesModel>(store);
  }

  static Future<ObjectBox> create() async {
    final docsDir = await getApplicationDocumentsDirectory();
    final store =
        await openStore(directory: p.join(docsDir.path, "obx-example"));
    return ObjectBox._create(store);
  }

  static ActivitiesModel? getUserDataObjectBox() {
    return activitiesBox.get(1);
  }

  static void addUserData(ActivitiesModel activitiesModel) {
    activitiesModel.id = 0;
    activitiesBox.put(activitiesModel);
  }

  static void putUserData(ActivitiesModel activitiesModel) {
    activitiesModel.id = 1;
    activitiesBox.put(activitiesModel);
  }

  static void removeUserData() {
    activitiesBox.remove(1);
  }
}
