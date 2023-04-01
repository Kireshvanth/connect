import 'dart:developer';

import 'package:mongo_dart/mongo_dart.dart';
import 'dbConstant.dart';

class MongoDatabase{
  static var db,postCollection;
  static connect() async {
    db = await Db.create(MONGO_CONN_URL);
    await db.open() ;
    inspect(db) ;
    postCollection = db.collection(POST_COLLECTION) ;
  }
  static Future<List<Map<String,dynamic>>> getData() async{
    final arrData = await postCollection.find().toList() ;
    return arrData ;
  }
}
