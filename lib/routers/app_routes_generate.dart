import 'package:get/get.dart';

import 'package:talk/routers/middleware/route_auth_middleware.dart';

import 'package:talk/routers/app_routes.dart';
import 'package:talk/routers/app_routes_models.dart';
import 'package:talk/routers/middleware/route_on_board_middleware.dart';

import 'package:talk/ui/main/view.dart';
import 'package:talk/ui/member/view.dart';
import 'package:talk/ui/message_private_chat/view.dart';

class AppRoutesGenerate {
  static final List<AppRoutesModels> routes = <AppRoutesModels>[
    // AppRoutesModels(AppRoutes.onBoard, () => OnBoardPage()),
    // AppRoutesModels(
    //   AppRoutes.login,
    //   () => RealLoginPage(),
    //   transition: Transition.rightToLeft,
    // ),
    // AppRoutesModels(AppRoutes.register, () => RegisterPage()),
    // AppRoutesModels(AppRoutes.stepProfile, () => StepProfilePage()),
    AppRoutesModels(AppRoutes.main, () => MainPage()),
    AppRoutesModels(
      AppRoutes.member,
      () => MemberPage(),
      transition: Transition.rightToLeft,
    ),
    AppRoutesModels(
      AppRoutes.messagePrivateChat,
      () => MessagePrivateChatPage(),
      transition: Transition.rightToLeft,
    ),
  ];

  static final List<String> noValidation = <String>[
    AppRoutes.onBoard,
    AppRoutes.login,
    AppRoutes.register,
    AppRoutes.main,
    AppRoutes.member,
    AppRoutes.messagePrivateChat,
  ];

  // 通用过滤器
  static final List<GetMiddleware> defaultMiddleware = <GetMiddleware>[
    RouteOnBoardMiddleware(),
  ];

  static List<GetPage>? onGenerateRoute() {
    return _generateRoute(routes);
  }

  static List<GetPage>? _generateRoute(List<AppRoutesModels> routes) {
    List<GetPage> appRoutes = <GetPage>[];
    List<GetMiddleware> middlewareList = <GetMiddleware>[];

    for (var element in routes) {
      // 判定是否需要登录验证
      if (noValidation.isNotEmpty && !noValidation.contains(element.name)) {
        defaultMiddleware.add(RouteAuthMiddleware());

        if (element.middlewares == null) {
          middlewareList = defaultMiddleware;
        } else {
          middlewareList.addAll(defaultMiddleware);
          middlewareList.addAll(element.middlewares!);
        }
      }

      if (element.children != null) {
        appRoutes.add(
          GetPage(
            name: element.name,
            page: element.page,
            transition: element.transition,
            middlewares: middlewareList,
            children: _generateRoute(element.children!)!,
          ),
        );
      } else {
        appRoutes.add(GetPage(
          name: element.name,
          page: element.page,
          transition: element.transition,
          middlewares: middlewareList,
        ));
      }
    }

    return appRoutes;
  }
}
