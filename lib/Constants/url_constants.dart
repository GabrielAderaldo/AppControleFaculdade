enum URL_CONSTANTS{
  URL_LOGO,
  URL_HOME
}

class UrlContants{

  static String getConstants({required URL_CONSTANTS urlConstants}){
    switch(urlConstants){

      case URL_CONSTANTS.URL_LOGO:
        return "https://italtecnologybrasil.com.br/wp-content/uploads/2019/05/10-Unifor.png";
      case URL_CONSTANTS.URL_HOME:
        return "https://www.unifor.br/documents/20143/573160/Fachada+CC-moema+mascarada-800.jpg/2e5e3242-7857-31c9-64cc-e4ad3b0e9efa?t=1621513441863";
      default:{
        return "nill";
      }
    }

  }
}