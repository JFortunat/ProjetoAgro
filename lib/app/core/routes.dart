import 'package:farm_management/app/presentention/view/home/home_navigation_view.dart';
import 'package:farm_management/app/presentention/view/home/home_view.dart';
import 'package:farm_management/app/presentention/view/auth/login_view.dart';
import 'package:farm_management/app/presentention/view/auth/sign_up_view.dart';
import 'package:farm_management/app/presentention/view/auth/splash_view.dart';
import 'package:farm_management/app/presentention/view/lands/new_land_view.dart';
import 'package:farm_management/app/presentention/view/orders/oders_view.dart';



var routes = {
  '/splash' : (_) => const SplashView(),
  '/login' : (_) => const LoginView(),
  '/sign-up' : (_) => const SignUpView(),
  '/home' : (_) => const HomeView(),
  '/home-navigation' : (_) => HomeNavigationView(),
  '/orders' : (_) => const OrdersView(),
  '/lands' : (_) => const LandsView(),
};
