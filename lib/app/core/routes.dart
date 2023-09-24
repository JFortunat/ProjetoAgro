import 'package:farm_management/app/presentention/view/home_view.dart';
import 'package:farm_management/app/presentention/view/login_view.dart';
import 'package:farm_management/app/presentention/view/sign_up_view.dart';
import 'package:farm_management/app/presentention/view/splash_view.dart';



var routes = {
  '/splash' : (_) => const SplashView(),
  '/login' : (_) => const LoginView(),
  '/sign-up' : (_) => const SignUpView(),
  '/home' : (_) => const HomeView(),
};
