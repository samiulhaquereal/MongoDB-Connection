import 'dart:developer';

import 'package:mongo_dart/mongo_dart.dart';

import 'constant.dart';

class MongoDataBase {

  static connect() async {
    try {
      var db = await Db.create(MONGO_URL);
      await db.open();
      inspect(db);
      var status = db.serverStatus();
      print(status);
      var collection = db.collection(COLLECTION_NAME);
      print(await collection.find().toList());
    } catch (e) {
      print('MongoDB Connection Error Page: $e');
    }
  }


}