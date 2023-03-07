import 'package:flutter/material.dart';
import 'package:projeto_experimentacao_orientada/View/apresentation_screen.dart';

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ApresentationScreen(),
    );
  }
}
