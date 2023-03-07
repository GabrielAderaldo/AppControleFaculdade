import 'package:flutter/material.dart';
import 'package:projeto_experimentacao_orientada/Constants/url_constants.dart';
import 'package:projeto_experimentacao_orientada/View/create_user.dart';


class ApresentationScreen extends StatelessWidget {
  const ApresentationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size =  MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: size.width,
            height: size.height *0.4,
            child: Image.network(
                UrlContants.getConstants(urlConstants: URL_CONSTANTS.URL_LOGO)
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
            ),
            width: size.width,
            height: size.height *0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.only(top: 100,left: 20,right: 20),
                  child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        )
                      ),
                      border: OutlineInputBorder(),
                      labelText: "Login"
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 40,left: 20,right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            )
                        ),
                      border: OutlineInputBorder(),
                      labelText: "Senha"
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.only(top: 40),
                  child: InkWell(
                    child: Container(
                      width: size.height/4,
                      child:Center(
                        child: Text("LOGIN"),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(4)),
                      ),
                    ),
                    onTap: () async{
                    },
                  )
                ),
                Padding(padding: const EdgeInsets.only(top: 40),
                    child: InkWell(
                      child: Container(
                        width: size.height/4,
                        child:Center(
                          child: Text("Criar Conta"),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(4)),
                        ),
                      ),
                      onTap: () async{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CreateUserScreen()));
                      },
                    )
                )
              ],
            ),

          )
        ],
      ),
    );
  }
}
