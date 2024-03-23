import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/ui/app_theme.dart';
import 'package:ecommerce_app/ui/auth/login/login_screen.dart';
import 'package:ecommerce_app/ui/auth/register/register_screen.dart';
import 'package:ecommerce_app/ui/home/home_screen.dart';
import 'package:ecommerce_app/ui/home/home_tab/home_tab.dart';
import 'package:ecommerce_app/ui/my_bloc_observer.dart';
import 'package:ecommerce_app/ui/products_catalog/products_catalog.dart';
import 'package:ecommerce_app/ui/utils/shared_preference_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'di/di.dart';

Future<void> main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // to make sure that app init everything i need before app run to prevent any error
  await SharedPreferenceUtils.init();
  var user = SharedPreferenceUtils.getData(key: 'token');
  print('token: $user');

  String route;
  if (user == null) {
    route = LoginScreen.routeName;
  } else {
    route = HomeScreen.routeName;
  }
  configureDependencies();
  Bloc.observer = MyBlocObserver();
  runApp(MyApp(route: route));
}

class MyApp extends StatelessWidget {
  final String route;

  const MyApp({required this.route, super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme,
        initialRoute: route,
        routes: {
          HomeScreen.routeName: (context) => const HomeScreen(),
          LoginScreen.routeName: (context) => const LoginScreen(),
          RegisterScreen.routeName: (context) => const RegisterScreen(),
          HomeTab.routeName: (context) => const HomeTab(),
          ProductsCatalog.routeName: (context) => const ProductsCatalog(),
        },
      ),
    );
  }
}
