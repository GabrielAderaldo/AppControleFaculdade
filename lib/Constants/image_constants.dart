import 'package:flutter/material.dart';

enum IMAGES { logo_unifor_sem_fundo }

class ImagesConstants {
  static Image getImage(IMAGES image) {
    switch (image) {
      case IMAGES.logo_unifor_sem_fundo:
        return Image.asset("image/uniforLogoSemFundo.webp");
    }
  }
}
