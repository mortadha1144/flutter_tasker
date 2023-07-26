import 'package:flutter/material.dart';
import 'package:flutter_tasker/features/auth/data/models/register_model.dart';
import 'package:flutter_tasker/features/auth/data/repos/auth_repo.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/theme.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import 'custom_form_error.dart';
import 'custom_suffix_icon.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? name;
  String? email;
  String? password;
  String? confirmPassword;
  int? age;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildNameFormField(),
          const SizedBox(height: 20),
          buildEmailFormField(),
          const SizedBox(height: 20),
          buildPasswordFormField(),
          const SizedBox(height: 20),
          buildConfPasswordFormField(),
          const SizedBox(height: 20),
          buildAgeFormField(),
          CustomFormError(errors: errors),
          const SizedBox(height: 40),
          CustomButton(
            text: 'Continue',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                RegisterModel registerModel = RegisterModel(
                  name: name,
                  email: email,
                  password: confirmPassword,
                  age: age,
                );

                AuthRepo authRepo = AuthRepo();
                authRepo.register(registerModel.toJson());
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildAgeFormField() {
    return TextFormField(
      onSaved: (newValue) => age = int.parse(newValue ?? '0'),
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAgelNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kAgelNullError);
          return '';
        }
        return null;
      },
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        hintText: 'Enter your Age',
        labelText: 'Age',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            CustomSurffixIcon(svgIcon: 'assets/icons/Question mark.svg'),
      ).applyDefaults(inputDecorationTheme()),
    );
  }

  TextFormField buildConfPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirmPassword = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
          confirmPassword = value;
          if (password == confirmPassword) {
            removeError(error: kMatchPassError);
          }
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return '';
        } else if (password != value) {
          addError(error: kMatchPassError);
          return '';
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        hintText: 'Re-enter your password',
        labelText: 'Confirm Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: 'assets/icons/Lock.svg'),
      ).applyDefaults(inputDecorationTheme()),
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
        password = value;
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
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
          if (emailValidatorRegExp.hasMatch(value)) {
            removeError(error: kInvalidEmailError);
          }
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return '';
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return '';
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: 'Enter your email',
        labelText: 'Email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: 'assets/icons/Mail.svg'),
      ).applyDefaults(inputDecorationTheme()),
    );
  }

  TextFormField buildNameFormField() {
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
