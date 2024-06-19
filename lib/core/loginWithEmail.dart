import 'dart:developer';

import 'package:blood_gp/core/api/api_service.dart';
import 'package:blood_gp/core/constants.dart';
import 'package:blood_gp/forgetpasswor/forgetpass.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:blood_gp/core/BottomBar.dart';

class EmailLogin extends StatefulWidget {
  @override
  _EmailLoginState createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
  late String _emailID, _password;
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void validateLogin() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      try {
        final response = await ApiService.signIn(
          email: _emailID,
          password: _password,
        );
        log('User logged in: $response');
        if (!mounted) return;
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const BottomNavigationPage()),
        );
      } catch (e) {
        log('Error: $e');
        // You can show a dialog or toast here
      }
    }
  }

  Widget emailInput() {
    return SizedBox(
        width: 365,
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          textAlign: TextAlign.right,
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsetsDirectional.only(start: 12.0),
              child: Image.asset('assets/images/arroba 1.png',
                  width: 24, height: 24),
            ),
            labelText: 'البريد الالكتروني',
            hintText: 'example@example.com',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          validator: (email) {
            if (email!.isEmpty) return 'Please Enter email ID';
            if (!EmailValidator.validate(email))
              return 'Enter valid email address';
            return null;
          },
          onSaved: (email) => _emailID = email!,
          textInputAction: TextInputAction.next,
        ));
  }

  bool _passwordInVisible = true;

  SizedBox buildPasswordFormField() {
    return SizedBox(
      width: 365,
      child: TextFormField(
        obscureText: _passwordInVisible,
        onSaved: (newValue) => _password = newValue!,
        validator: (value) {
          if (value!.isEmpty) return 'Please Enter password';
          if (value.length < 8) return 'Password must be at least 8 characters';
          return null;
        },
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 14.0),
        decoration: InputDecoration(
          prefixIcon: IconButton(
            icon: Icon(
              _passwordInVisible ? Icons.visibility_off : Icons.visibility,
              color: Theme.of(context).primaryColorDark,
            ),
            onPressed: () {
              setState(() {
                _passwordInVisible = !_passwordInVisible;
              });
            },
          ),
          suffixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(start: 12.0),
            child: Image.asset(
              'assets/images/lock 1.png',
              width: 24,
              height: 24,
            ),
          ),
          labelText: 'كلمة السر',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          emailInput(),
          SizedBox(height: 16),
          buildPasswordFormField(),
          SizedBox(height: 16),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => fogetpass()),
                );
              },
              child: Text(
                " نسيت كلمة السر ",
                style: TextStyle(
                  color: kMainColor,
                  fontFamily: "Almarai",
                ),
              ),
            ),
          ),
          SizedBox(
            width: 334,
            child: ElevatedButton(
              onPressed: () {
                validateLogin();
              },
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(kMainColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(14.0),
                child: Text(
                  'تسجيل الدخول ',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Almarai",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
