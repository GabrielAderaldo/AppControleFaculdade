import 'package:flutter/material.dart';
import 'package:projeto_experimentacao_orientada/Controller/create_user_controller.dart';

class SwitchAnimationColunm extends StatefulWidget {
  @override
  State<SwitchAnimationColunm> createState() => _SwitchAnimationColunmState();
}

class _SwitchAnimationColunmState extends State<SwitchAnimationColunm>
    with SingleTickerProviderStateMixin {
  bool isSwitchContainer = false;
  bool isObscurePass = true;
  bool isObscureConfirmPass = true;
  late AnimationController _controller;
  late TextEditingController nameController;
  late TextEditingController passController;
  late TextEditingController confirmController;
  late TextEditingController nameStudantController;
  late TextEditingController passStudantController;
  late TextEditingController confirmPassStudantController;
  CreateUserController userController = CreateUserController();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    nameController = TextEditingController();
    passController = TextEditingController();
    confirmController = TextEditingController();
    nameStudantController = TextEditingController();
    passStudantController = TextEditingController();
    confirmPassStudantController = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  professorContainer() {
    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
      height: 400,
      decoration: const BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 100, right: 100),
            child: Text("cadastro professor"),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Nome do usuario",
              ),
              onTap: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              controller: passController,
              obscureText: isObscurePass,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: "Senha",
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isObscurePass = !isObscurePass;
                      });
                    },
                    icon: isObscurePass
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility)),
              ),
              onTap: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              controller: confirmController,
              obscureText: isObscureConfirmPass,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: "Repita sua senha",
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isObscureConfirmPass = !isObscureConfirmPass;
                    });
                  },
                  icon: isObscureConfirmPass
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                ),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }

  alunoContainer() {
    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
      height: 400,
      decoration: const BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 100, right: 100),
            child: Text("cadastro aluno"),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: nameStudantController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Nome do usuario",
              ),
              onTap: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              controller: passStudantController,
              obscureText: isObscurePass,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: "Senha",
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isObscurePass = !isObscurePass;
                      });
                    },
                    icon: isObscurePass
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility)),
              ),
              onTap: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              controller: confirmPassStudantController,
              obscureText: isObscureConfirmPass,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: "Repita sua senha",
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isObscureConfirmPass = !isObscureConfirmPass;
                    });
                  },
                  icon: isObscureConfirmPass
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                ),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, right: 100, left: 100),
              child: Center(
                child: Row(
                  children: [
                    Text("Escolha o tipo do usuario"),
                    Switch(
                        activeColor: Colors.blueAccent,
                        value: isSwitchContainer,
                        onChanged: (bool value) {
                          setState(() {
                            isSwitchContainer = !isSwitchContainer;
                          });
                        }),
                  ],
                ),
              ),
            ),
            isSwitchContainer
                ? Padding(
                    padding: EdgeInsets.only(left: 40, top: 20, right: 40),
                    child: alunoContainer())
                : Padding(
                    padding: EdgeInsets.only(left: 40, top: 20, right: 40),
                    child: professorContainer()),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                child: Text("teste"),
                onPressed: () {
                  if (isSwitchContainer == true) {
                   final hasSamePass = CreateUserController().isSamePass(
                        pass: passController.text,
                        confirmPass: confirmController.text);
                   if(hasSamePass){}else{
                     showDialog(context: context, builder:(BuildContext context){
                       SnackBar(
                         content: Text("teste"),
                       );
                     });
                   }
                  } else {}
                },
              ),
            )
          ],
        ),
        duration: const Duration(milliseconds: 420));
  }
}
