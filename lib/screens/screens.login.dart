import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/theme.color.dart';

class ScreenFirebase extends StatefulWidget {
  const ScreenFirebase({super.key});

  @override
  State<ScreenFirebase> createState() => _ScreenFirebaseState();
}

class _ScreenFirebaseState extends State<ScreenFirebase> {
  final _controllerEmail = TextEditingController();

  final _controllerPassword = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: _getBody(),
    );
  }

  Widget _getBody() {
    return Center(
        child: Container(
      height: 350,
      width: 350,
      color: containerColor,
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.account_circle_outlined,
                size: 100,
                color: Colors.grey,
              )
            ],
          ),
          Form(child: _getForm())
        ],
      ),
    ));
  }

  Widget _getForm() {
    _formKey;
    return Column(
      children: [
        _getEmailField("Email"),
        const SizedBox(
          height: 10,
        ),
        _getPasswordField("Password"),
        _getButton("Login"),
        _getButton("Register"),
      ],
    );
  }

  Widget _getEmailField(String text) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        decoration: InputDecoration(
          label: Text((text)),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        ),
        controller: _controllerEmail,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          if (!value.contains('@')) {
            return 'Please enter a valid email';
          }
          return null;
        },
      ),
    );
  }

  Widget _getPasswordField(String text) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        decoration: InputDecoration(
          label: Text((text)),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        ),
        controller: _controllerPassword,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          if (value.length < 6) {
            return 'Please enter a valid password';
          }
          return null;
        },
      ),
    );
  }

  Widget _getButton(String text) {
    return ElevatedButton(
      onPressed: () {
        if (text == 'Register') {
          Navigator.pushNamed(context, '/Cadastro');
        } else {}
      },
      child: Text(text),
    );
  }
}
