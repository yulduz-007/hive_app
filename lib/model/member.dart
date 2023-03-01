
class Member {
String? email;
String? password;

Member(this.email,this.password);

Map toMap(){
  return{"email":email,"password": password};
}
Member.mapDan(Map map){
  email = map["email"];
  password = map["password"];
}
}