import 'package:get/get_navigation/src/routes/route_middleware.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class AppRoutesModels {
  late String name;
  late GetPageBuilder page;
  late Transition? transition;
  late List<AppRoutesModels>? children;
  late List<GetMiddleware>? middlewares;

  AppRoutesModels(
    this.name,
    this.page, {
    this.transition,
    this.middlewares,
    this.children,
  });
}
