import 'package:flutter/material.dart';
import 'package:unifavor/components/custom_surffix_icon.dart';
import 'package:unifavor/components/default_button.dart';
import 'package:unifavor/components/form_error.dart';
import 'package:unifavor/constants.dart';
import 'package:unifavor/helper/keyboard.dart';
import 'package:unifavor/screens/forgot_password/forgot_password_screen.dart';
import 'package:unifavor/size_config.dart';
import 'package:unifavor/screens/login_success/login_success_screen.dart';

class SignForm extends StatefulWidget {
  const SignForm({
    Key? key
  }) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if(!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  void removeError({String? error}) {
    if(!errors.contains(error)){
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          builderEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          builderPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              const Text("Recuerdame"),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context,
                    ForgotPasswordScreen.routeName
                ),
                child: Text(
                  "Has olvidado \ntu contraseña",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Continuar",
            press: () {
              if(_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Keyboard.hideKeyboard(context);
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField builderEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValues) => email = newValues,
      onChanged: (value) {
        if(value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if(emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if(value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if(!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Ingresa tu Email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/Mail.svg",
        )
      ),
    );
  }

  TextFormField builderPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if(value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if(value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if(value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if(value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "Contraseña",
          hintText: "Ingresa tu Contraseña",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/Lock.svg",
          )
      ),
    );
  }

}