class CreateUserController{

  bool isSamePass({required String pass,required String confirmPass}){
    return pass == confirmPass;
  }



}