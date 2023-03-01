import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:have_app/login_page.dart';
import 'package:have_app/model/member.dart';
import 'package:have_app/service/hive_service.dart';


// ignore: camel_case_types
class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

// ignore: camel_case_types
class _Home_PageState extends State<Home_Page> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          SizedBox(
            width: 200,
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(hintText: "Email"),
            ),
          ),
          SizedBox(
            width: 200,
            child: TextField(
              controller: passwordController,
              decoration: const InputDecoration(hintText: "Passwod"),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          ElevatedButton(
            onPressed: () async {
              Member member =
                  Member(emailController.text, passwordController.text);
                   HiveService.saveDBMember(member);
              // var box = Hive.box("nemnig");
              //     box.put("amail",emailController.text);
              //     box.put("pass",passwordController.text);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => Login_Page()),
                ),
              );
            },
            child: const Text("Logn"),
          ),
        ],
      ),
    );
  }
}
