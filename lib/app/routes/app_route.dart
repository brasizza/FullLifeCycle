import 'package:get/get.dart';
import '../modules/home/home_bindings.dart';
import '../modules/home/home_page.dart';

abstract class AppPages {
  static final pages = [GetPage(name: '/', page: () => const HomePage(), binding: HomeBindings())];
}
