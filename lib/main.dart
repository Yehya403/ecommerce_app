import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/ui/auth/login/login_screen.dart';
import 'package:ecommerce_app/ui/auth/register/register_screen.dart';
import 'package:ecommerce_app/ui/home/home_screen.dart';
import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/ui/home/home_tab/home_tab.dart';
import 'package:ecommerce_app/ui/my_bloc_observer.dart';
import 'package:ecommerce_app/ui/my_colors.dart';
import 'package:ecommerce_app/ui/products_catalog/products_catalog.dart';
import 'package:ecommerce_app/ui/my_bloc_observer.dart';
import 'package:ecommerce_app/ui/products_catalog/products_catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'di/di.dart';

void main() {
  configureDependencies();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
          useMaterial3: true,
        ),
        initialRoute: LoginScreen.routeName,
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
