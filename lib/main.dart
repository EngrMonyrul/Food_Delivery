import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:food_resturant_app/core/routes/routes_config.dart';
import 'package:food_resturant_app/core/routes/routes_name.dart';
import 'package:food_resturant_app/presentation/home/bloc/home_page_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // load env file
  await dotenv.load();

  // make device vertically
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // run app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomePageBloc>(create: (context) => HomePageBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Food Delivery",
        initialRoute: RoutesName.homePage,
        onGenerateRoute: RoutesConfig.onGenerateRoutes,
      ),
    );
  }
}
