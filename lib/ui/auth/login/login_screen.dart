import 'package:ecommerce_app/ui/auth/login/cubit/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../di/di.dart';
import '../../common/text_field_item.dart';
import '../../home/home_screen.dart';
import '../../my_colors.dart';
import '../../utils/dialog_utils.dart';
import '../register/register_screen.dart';
import 'cubit/login_view_model.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'login screen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var viewModel = getIt<LoginViewModel>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginViewModel, LoginStates>(
        bloc: viewModel,
        listener: (context, state) {
          if (state is LoginLoadingState) {
            DialogUtils.showLoading(context, state.loadingMessage ?? 'waiting');
          } else if (state is LoginErrorState) {
            DialogUtils.hideLoading(context);
            DialogUtils.showMessage(context, state.errorMessage!,
                title: 'Error', posActionName: 'ok');
          } else if (state is LoginSuccessState) {
            DialogUtils.hideLoading(context);
            DialogUtils.showMessage(context, 'Login Successfully',
                title: 'Success', posActionName: 'ok', posAction: () {
              Navigator.pushReplacementNamed(context, HomeScreen.routeName);
            });
          }
        },
        child: Scaffold(
          body: Container(
            color: Theme.of(context).primaryColor,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 64.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Welcome Back',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontSize: 24.sp),
                        ),
                        Text(
                          'Please sign in with your mail',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontSize: 16.sp),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40.h),
                          child: Form(
                            key: viewModel.formKey,
                            child: Column(
                              children: [
                                TextFieldItem(
                                  fieldName: 'E-mail address',
                                  hintText: 'enter your email address',
                                  controller: viewModel.emailController,
                                  validator: (value) {
                                    if (value == null || value.trim().isEmpty) {
                                      return 'please enter your email address';
                                    }
                                    bool emailValid = RegExp(
                                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                        .hasMatch(value);
                                    if (!emailValid) {
                                      return 'invalid email';
                                    }
                                    return null;
                                  },
                                ),
                                TextFieldItem(
                                  fieldName: 'Password',
                                  hintText: 'enter your password',
                                  controller: viewModel.passwordController,
                                  validator: (value) {
                                    if (value == null || value.trim().isEmpty) {
                                      return 'please enter password';
                                    }
                                    if (value.trim().length < 6 ||
                                        value.trim().length > 30) {
                                      return 'password should be >6 & <30';
                                    }
                                    return null;
                                  },
                                  isObscure: viewModel.isObscure,
                                  suffixIcon: InkWell(
                                    child: viewModel.isObscure
                                        ? const Icon(Icons.visibility_off)
                                        : const Icon(Icons.visibility),
                                    onTap: () {
                                      if (viewModel.isObscure) {
                                        viewModel.isObscure = false;
                                      } else {
                                        viewModel.isObscure = true;
                                      }
                                      setState(() {});
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          'Forgot Password',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(color: AppColors.whiteColor),
                          textAlign: TextAlign.end,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 32.h),
                          child: ElevatedButton(
                            onPressed: () {
                              viewModel.login();
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.whiteColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(15.r)))),
                            child: SizedBox(
                              height: 64.h,
                              width: 398.w,
                              child: Center(
                                child: Text(
                                  'Login',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                          color: AppColors.primaryColor,
                                          fontSize: 20.sp),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 24.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Don’t have an account? ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(color: AppColors.whiteColor)),
                              SizedBox(
                                width: 4.w,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const RegisterScreen(),
                                      ));
                                },
                                child: Text('Create Account',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall
                                        ?.copyWith(
                                            color: AppColors.whiteColor)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
