import 'package:flutter/material.dart';
import 'package:projeto_experimentacao_orientada/Constants/types_user.dart';
import 'package:projeto_experimentacao_orientada/Model/users.dart';
import 'package:projeto_experimentacao_orientada/database/user_database.dart';

class CreateUserScreen extends StatelessWidget {
  const CreateUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserDatabase userDatabase = UserDatabase();
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar uma nova conta"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: const Placeholder(),
    );
  }
}
