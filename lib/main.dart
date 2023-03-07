import 'package:flutter/material.dart';
import 'package:projeto_experimentacao_orientada/Root/root.dart';

import 'database/db_config.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DbConfig.start();
  runApp(const Root());
}

