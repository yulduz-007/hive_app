import 'dart:convert';



import 'package:have_app/model/member.dart';
import 'package:hive_flutter/adapters.dart';




class HiveService{
 static Future<void> saveDBMember( Member member)async{
    Map map = member.toMap();
              String json = jsonEncode(map);
              var box = Hive.box("nemnig");
              box.put("member",json);
  }
  static   Member getDBMember () {
              var box = Hive.box("nemnig");
               String json = jsonEncode("member");
               Map map = jsonDecode(json);

               return Member.mapDan(map);
             
    
  }
}