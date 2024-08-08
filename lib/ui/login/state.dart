import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginState {

  late Rx<TextEditingController> usernameController;
  late Rx<TextEditingController> passwordController;

  LoginState() {
    usernameController = TextEditingController().obs;
    passwordController = TextEditingController().obs;
  }
}
