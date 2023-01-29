import 'package:objectbox/objectbox.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'data/models/user_data_model.dart';

import 'objectbox.g.dart';

class ObjectBox {
  late final Store store;
  static late final Box<UserDataModel> userDataBox;

  ObjectBox._create(this.store) {
    userDataBox = Box<UserDataModel>(store);
  }

  static Future<ObjectBox> create() async {
    final docsDir = await getApplicationDocumentsDirectory();
    final store =
        await openStore(directory: p.join(docsDir.path, "obx-example"));
    return ObjectBox._create(store);
  }

  static UserDataModel? getUserDataObjectBox() {
    return userDataBox.get(1);
  }

  static void addUserData(UserDataModel userDataModel) {
    final id = userDataBox.put(userDataModel);
    userDataModel = userDataBox.get(id)!;
    userDataBox.put(userDataModel);
  }

  static void putUserData(UserDataModel userDataModel) {
    userDataBox.put(userDataModel);
  }

  static void removeUserData() {
    userDataBox.remove(1);
  }
}
