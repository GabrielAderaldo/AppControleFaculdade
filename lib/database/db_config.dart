import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DbConfig{

  static start() async{
    Directory dir = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(dir.path);
  }

  static  initBox() async{
    Box box = await Hive.openBox("User");
    return box;
  }

}