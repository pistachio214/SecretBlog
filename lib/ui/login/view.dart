import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'logic.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final logic = Get.put(LoginLogic());
  final state = Get.find<LoginLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 40.0),
                child: const Text(
                  "手机号密码登录",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(
                  color: Color(0xfff7f7f7),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: TextField(
                  maxLines: 1,
                  maxLength: 11,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  cursorColor: const Color(0xffFF7E98),
                  decoration: const InputDecoration(
                    counterText: "",
                    hintText: "请输入手机号码",
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(
                  color: Color(0xfff7f7f7),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: const TextField(
                  maxLines: 1,
                  maxLength: 20,
                  obscureText: true,
                  cursorColor: Color(0xffFF7E98),
                  decoration: InputDecoration(
                    counterText: "",
                    hintText: "请输入密码",
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: state.currentIndex.value == "",
                      child: InkWell(
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onTap: () => logic.checkRadio(),
                        child: const Icon(
                          Icons.panorama_fisheye_outlined,
                          size: 18,
                          color: Color(0xff797777),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: state.currentIndex.value == "1",
                      child: InkWell(
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onTap: () => logic.cancelRadio(),
                        child: const Icon(
                          Icons.check_circle_sharp,
                          size: 18,
                          color: Color(0xffFF7E98),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      "已阅读并同意 ",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    InkWell(
                      onTap: () => logic.userAgreement(),
                      overlayColor: WidgetStateProperty.all(Colors.transparent),
                      child: const Text(
                        "《用户协议》",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Text(
                      " 和 ",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    InkWell(
                      onTap: () => logic.privacyPolicy(),
                      overlayColor: WidgetStateProperty.all(Colors.transparent),
                      child: const Text(
                        "《隐私政策》",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              TextButton(
                style: ButtonStyle(
                  shape: WidgetStateProperty.all(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  backgroundColor:
                      WidgetStateProperty.all(const Color(0xffFF7E98)),
                ),
                onPressed: () => logic.loginAction(),
                child: const Text(
                  "登录",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 8),
                  const Text(
                    "忘记了? ",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  InkWell(
                    onTap: () => logic.retrievePassword(),
                    overlayColor: WidgetStateProperty.all(Colors.transparent),
                    child: const Text(
                      "找回密码",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
