import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastUtil {
  /// 弹出提示
  static void shotToast(
    String message, [
    //方括号里是可选参数，可以不填，等号右边是默认值
    Toast time = Toast.LENGTH_SHORT,
    ToastGravity gravity = ToastGravity.CENTER,
    Color backColor = Colors.black87,
    Color textColor = Colors.white,
  ]) {
    Fluttertoast.showToast(
      msg: message,
      //消息内容
      toastLength: time,
      //停留时间
      gravity: gravity,
      //出现的位置
      timeInSecForIosWeb: 1,
      backgroundColor: backColor,
      //背景色
      textColor: textColor,
      //前景色
      fontSize: 13.0,
    ); //文本字号
  }
}
