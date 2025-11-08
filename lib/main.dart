import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:food_resturant_app/core/routes/routes_config.dart';
import 'package:food_resturant_app/core/routes/routes_name.dart';
import 'package:food_resturant_app/core/themeConfigs/base_theme_config.dart';
import 'package:food_resturant_app/data/repositories/homeRepo/home_repo_impl.dart';
import 'package:food_resturant_app/presentation/home/bloc/home_bloc.dart';
import 'package:food_resturant_app/utils/services/di_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /*-------------> load env file <-------------*/
  await dotenv.load();
  await DiService.init(baseUrl: dotenv.get("BASE_URL"));

  /*-------------> set device portrait <-------------*/
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  /*-------------> myapp <-------------*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<HomeBloc>(create: (context) => HomeBloc())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Food Delivery",
        initialRoute: RoutesName.landingPage,
        onGenerateRoute: RoutesConfig.onGenerateRoutes,
        theme: BaseThemeConfig.lightTheme,
      ),
    );
  }
}
