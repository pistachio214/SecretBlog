import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:talk/routers/app_routes.dart';
import 'package:talk/routers/app_routes_generate.dart';

void main() {
  //需确保加载完成
  WidgetsFlutterBinding.ensureInitialized();

  SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  );
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);

  GetStorage.init().then((bool e) {
    if (e) {
      runApp(const MainApp());
    }
  });
}

final easyLoading = EasyLoading.init();
final fToast = FToastBuilder();

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sexy Talk',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffE86494)),
        primarySwatch: createMaterialColor(const Color(0xffFCFCFC)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
        primaryColor: Colors.white,
        // 去除TabBar底部线条
        tabBarTheme: const TabBarTheme(dividerColor: Colors.transparent),
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('zh', 'CH'),
        Locale('en', 'US'),
      ],
      locale: const Locale('zh'),
      builder: (BuildContext context, Widget? child) {
        child = easyLoading(context, child);
        child = fToast(context, child);
        // 点击空白,键盘消失
        child = Scaffold(
          body: GestureDetector(
            onTap: () => hideKeyboard(context),
            child: child,
          ),
        );

        return child;
      },
      initialRoute: AppRoutes.main,
      defaultTransition: Transition.cupertino,
      getPages: AppRoutesGenerate.onGenerateRoute(),
    );
  }

  MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = <int, Color>{};

    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }

  void hideKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }
}
