import 'package:farm_management/app/data/remote_data_source/remote_data_source.dart';
import 'package:farm_management/app/data/remote_data_source/remote_data_source_impl.dart';
import 'package:farm_management/app/data/repositories/remote_repository_impl.dart';
import 'package:farm_management/app/domain/repositories/remote_repository.dart';
import 'package:farm_management/app/domain/usecases/auth/login_usecase.dart';
import 'package:farm_management/app/domain/usecases/auth/logout_usecase.dart';
import 'package:farm_management/app/domain/usecases/auth/sign_up_usecase.dart';
import 'package:farm_management/app/domain/usecases/culture/cultures_usecase.dart';
import 'package:farm_management/app/domain/usecases/land/lands_usecase.dart';
import 'package:farm_management/app/domain/usecases/orders/orders_usecase.dart';
import 'package:farm_management/app/presentention/controllers/auth/login_controller.dart';
import 'package:farm_management/app/presentention/controllers/auth/sign_up_controller.dart';
import 'package:farm_management/app/presentention/controllers/culture/new_culture_controller.dart';
import 'package:farm_management/app/presentention/controllers/home/home_controller.dart';
import 'package:farm_management/app/presentention/controllers/home/home_navigation_view.dart';
import 'package:farm_management/app/presentention/controllers/lands/lands_controller.dart';
import 'package:farm_management/app/presentention/controllers/orders/orders_controller.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> init() async {
  
  // Data
  getIt.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl());

  // Usecases
  getIt.registerLazySingleton<LoginUsecase>(() => LoginUsecase(getIt()));
  getIt.registerLazySingleton<SignUpUseCase>(() => SignUpUseCase(getIt()));
  getIt.registerLazySingleton<LogoutUseCase>(() => LogoutUseCase(getIt()));
  getIt.registerLazySingleton<CulturesUseCase>(() => CulturesUseCase(getIt()));
  getIt.registerLazySingleton<OrdersUseCase>(() => OrdersUseCase(getIt()));
  getIt.registerLazySingleton<LandsUseCase>(() => LandsUseCase(getIt()));


  // Repositories
  getIt.registerLazySingleton<RemoteRepository>(() => RemoteRepositoryImpl(getIt()));

  // Controllers
  getIt.registerLazySingleton<SignUpController>(() => SignUpController());
  getIt.registerLazySingleton<LoginController>(() => LoginController());
  getIt.registerLazySingleton<HomeController>(() => HomeController());
  getIt.registerLazySingleton<HomeNavigationController>(() => HomeNavigationController());
  getIt.registerLazySingleton<LandsController>(() => LandsController());
  getIt.registerLazySingleton<NewCultureController>(() => NewCultureController());
  getIt.registerLazySingleton<OrdersController>(() => OrdersController());
}