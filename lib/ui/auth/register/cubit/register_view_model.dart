import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/ui/auth/register/cubit/register_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/usecase/register_use_case.dart';

@injectable
class RegisterViewModel extends Cubit<RegisterStates> {
  RegisterUseCase registerUseCase;

  @factoryMethod
  RegisterViewModel(this.registerUseCase) : super(RegisterInitialState());
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmationPasswordController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  bool isObscure = true;

  Future<void> register() async {
    if (formKey.currentState!.validate()) {
      emit(RegisterLoadingState(loadingMessage: 'loading...'));

      var either = await registerUseCase.invoke(
          nameController.text,
          emailController.text,
          passwordController.text,
          confirmationPasswordController.text,
          phoneController.text);
      either.fold((error) {
        emit(RegisterErrorState(errorMessage: error.errorMessage));
      }, (response) {
        emit(RegisterSuccessState(authResult: response));
      });
    }
  }
}
