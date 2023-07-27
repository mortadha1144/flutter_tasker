import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasker/core/utils/app_router.dart';
import 'package:flutter_tasker/core/utils/theme.dart';
import 'package:flutter_tasker/features/auth/presentation/providers/auth_provider.dart';
import 'package:flutter_tasker/features/auth/presentation/providers/auth_state.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import 'custom_form_error.dart';
import 'custom_suffix_icon.dart';

class LogInForm extends ConsumerStatefulWidget {
  const LogInForm({super.key});

  @override
  LogInFormState createState() => LogInFormState();
}

class LogInFormState extends ConsumerState<LogInForm> {
  final _formKey = GlobalKey<FormState>();
  String? name;
  String? password;
  bool remember = false;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(authProvider);
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          const SizedBox(
            height: 30,
          ),
          buildPasswordFormField(),
          const SizedBox(
            height: 30,
          ),
          CustomFormError(
            errors: errors,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            text: 'Continue',
            isLoading: state.isLoading,
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                FocusManager.instance.primaryFocus?.unfocus();
                await ref.watch(authProvider.notifier).login(name!, password!);
                ref.watch(authProvider).whenOrNull(
                      loaded: (authModel) => context
                          .push(AppRouter.kAuthSuccessView, extra: 'Login'),
                      error: (error) {
                        addError(error: error);
                      },
                    );
                // context.pushReplacement(AppRouter.kAuthSuccessView,
                //     extra: 'Login');
                // if all are valid then go to success view
                // BlocProvider.of<AuthCubit>(context)
                //     .signInUser(email: email!, password: password!);
                // context
                //     .read<AuthCubit>()
                //     .signInUser(email: email!, password: password!);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
          if (value.length >= 8) {
            removeError(error: kShortPassError);
          }
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return '';
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return '';
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        hintText: 'Enter your password',
        labelText: 'Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: 'assets/icons/Lock.svg'),
      ).applyDefaults(inputDecorationTheme()),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => name = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNamelNullError);
          return '';
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: 'Enter your Name',
        labelText: 'Name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: 'assets/icons/User.svg'),
      ).applyDefaults(inputDecorationTheme()),
    );
  }

  void removeError({required String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }
}
