import 'package:flutter/material.dart';
import 'package:projeto_experimentacao_orientada/Constants/url_constants.dart';
import 'package:projeto_experimentacao_orientada/View/Utils/media_query_size.dart';
import 'package:projeto_experimentacao_orientada/View/Utils/paddins.dart';
import 'package:projeto_experimentacao_orientada/View/create_user.dart';

import '../Constants/image_constants.dart';

class ApresentationScreen extends StatelessWidget {
  const ApresentationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = QuerySize.getSize(context);
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Column(children: [
          EazyPaddins(
            top: size.width * 0.3,
            left: size.height * 0.2,
            rigth: size.height * 0.2,
            child: ImagesConstants.getImage(IMAGES.logo_unifor_sem_fundo),
          ),
          EazyPaddins(
            left: 20,
            rigth: 20,
            child: Container(
              padding: const EdgeInsets.all(12),
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Spacer(),
                  Text("Bem vindo ao aplicativo de ultilidades"),
                  Spacer(),
                  Text("UNIFOR"),
                  Spacer(),
                  Text("Simulador de notas e Faltas"),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                      "é uma funcionalidade para poder os alunos simularem todos os tipos de situações academicas e poderem se preparar, além de visualizar no futuro sua situação academica"),
                  Spacer(
                    flex: 6,
                  )
                ],
              ),
            ),
          ),
          //TODO: Mudar a cor desse botão
          ElevatedButton(
              onPressed: () {},
              child: const Text("Acessar o simulador de faltas"))
        ]));
  }
}
