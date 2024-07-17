import 'package:flutter/material.dart';

class MainBottomNavigationBarComponent extends StatefulWidget {
  const MainBottomNavigationBarComponent({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.bottomTabs,
  });

  final int currentIndex;

  final Function(int) onTap;

  final List<BottomNavigationBarItem> bottomTabs;

  @override
  State<MainBottomNavigationBarComponent> createState() =>
      _MainBottomNavigationBarComponentState();
}

class _MainBottomNavigationBarComponentState
    extends State<MainBottomNavigationBarComponent> {
  @override
  Widget build(BuildContext context) {
    // fix 为取消下边栏点击按钮时的水波纹,特意处理一层theme
    return Theme(
      data: ThemeData(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
        elevation: 5.0,
        iconSize: 21.0,
        backgroundColor: Colors.white,
        // selectedItemColor: const Color(0xffFF7E98),
        items: widget.bottomTabs,
        // 类型设置(一旦超过4个,type会发生变化,所以最好设置一下)
        type: BottomNavigationBarType.fixed,
        // 设置bar激活时的颜色
        fixedColor: const Color(0xffFF7E98),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        // 选择时的key
        currentIndex: widget.currentIndex,
        onTap: (int index) {
          widget.onTap(index);
        },
        // 选择时文字大小
        selectedFontSize: 10.0,
        // 未选中时文字大小
        unselectedFontSize: 10.0,
      ),
    );
  }
}
