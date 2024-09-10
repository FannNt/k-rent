import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

import 'package:firebase_auth/firebase_auth.dart';
import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
