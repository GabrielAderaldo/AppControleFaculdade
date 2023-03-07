class UserModel{

  String name = "";
  List<double>? schoolGrades;
  double? presence;
  int type = 0;
  String passWord;

  UserModel({
    required this.name,
    required this.type,
    this.presence,
    this.schoolGrades,
    required this.passWord
  });

}