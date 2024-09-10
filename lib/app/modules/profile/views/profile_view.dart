import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import "../../../controllers/auth_controller.dart";
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  ProfileView({Key? key}) : super(key: key);
  final User? user = AuthController().currentUser;
  Widget _user(){
    return Text(user?.email?? 'User email');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfileView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            _user()
          ],
        )
      ),
    );
  }
}
