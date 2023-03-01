import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:have_app/model/member.dart';
import 'package:have_app/service/hive_service.dart';
import 'package:hive/hive.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(email),
            Text(password),
            ElevatedButton(
                onPressed: () async {
                 Member m1 = HiveService.getDBMember();
                  setState(() {
                    email = m1.email ?? "";
                    password = m1.password ?? "";
                  });

                  //  setState(() {
                  //     email = box.get("email");
                  //   password = box.get("password");
                  //  });
                },
                child: Text("Database dan olish"))
          ],
        ),
      ),
    );
  }
}
