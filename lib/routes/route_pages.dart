import 'package:get/get.dart';
import 'package:getx_practise/home%20Screen/home_screen.dart';
import 'package:getx_practise/routes/route_names.dart';

class RoutePages {
  static List<GetPage<dynamic>>? routes = [
    GetPage(name: RouteNames.homeScreen, page: () =>const HomeScreen()),
  ];
}