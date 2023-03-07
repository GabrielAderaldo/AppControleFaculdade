import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:projeto_experimentacao_orientada/Constants/types_user.dart';
import 'package:projeto_experimentacao_orientada/Model/users.dart';
class UserDatabase{

  late Box _box;
  UserModel user = UserModel(type: TypeUser.professor,passWord: "padrão",name: "nome",schoolGrades: [],presence: 100);

  UserDatabase(){
    initBox();
  }

  initBox() async{
    _box = await Hive.openBox("User");
  }

  destroyBox(){
    _box.close();
  }

  Map<String,dynamic>? getOneUser({required int typeUser,required int id}){
    if(user.type == TypeUser.professor){
      String result = _box.get(id);
      Map<String,dynamic> userMap = jsonDecode(result);
      return userMap;
    }
  }

  Map<dynamic,dynamic> getAllUsers(){
    return _box.toMap();
  }

  //TODO: Fazer um enum para a string de professor
   bool setUser({required UserModel user}){
    if(user.type == TypeUser.professor){
      Map<String,dynamic> userMap = {
        "name": user.name,
        "type": user.type,
        "pass":user.passWord
      };
      final userJson = json.encode(userMap);
      _box.add(userJson);
      return true;
    }else{
      Map<String,dynamic> userMap = {
        "name": user.name,
        "type": user.type,
        "schoolGrades":user.schoolGrades,
        "presence":user.presence,
        "pass":user.passWord
      };
      final userJson = json.encode(userMap);
      _box.add(userJson);
      return true;
    }
  }


  toAlter({required int id,required UserModel user}){
    try{
      if(user.type == TypeUser.professor){
        Map<String,dynamic> userMap = {
          "name": user.name,
          "type": user.type,
          "pass":user.passWord
        };
        final userJson = json.encode(userMap);
        _box.put(id, userJson);
      }else{
        Map<String,dynamic> userMap = {
          "name": user.name,
          "type": user.type,
          "schoolGrades":user.schoolGrades,
          "presence":user.presence,
          "pass":user.passWord
        };
        final userJson = json.encode(userMap);
        _box.put(id, userJson);
      }
    }catch(e){}
  }

  //TODO: Pensar melhor em como fazer um retorno descente.
  deleteAllUser()async{
    try{
      final result = _box.clear();
      if(await result == 0) return false;
      return true;
    }catch(e){
      return false;
    }
  }

  deleteOneUser({required id}){
    _box.delete(id);
  }


}