import 'package:e_commerse_app/app/modules/home/binding/home_binding.dart';
import 'package:get/get.dart';

import '../modules/home/views/home_view.dart';

class AppPages {
  static const String initial = HomeView.route;

  static const transition = Transition.cupertinoDialog;
  static const duration = Duration(milliseconds: 500);

  static final List<GetPage> allRoutes = [
    GetPage(
        name: HomeView.route,
        page: () => const HomeView(),
        binding: HomeBinding()),
  ];
}
