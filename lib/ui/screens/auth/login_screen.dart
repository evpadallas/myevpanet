import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _loginForm(),
      ),
    );
  }

  _loginForm() {
    final _phoneController = TextEditingController();
    final _uidController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'ID абонента',
                  filled: true,
                  isDense: true,
                ),
                controller: _uidController,
                keyboardType: TextInputType.number,
                autocorrect: false,
                validator: (value) {
                  if (value == null) {
                    return 'Email is required.';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 12,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Номер телефона',
                  filled: true,
                  isDense: true,
                ),
                keyboardType: TextInputType.phone,
                controller: _phoneController,
                validator: (value) {
                  if (value == null) {
                    return 'Password is required.';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                child: Text('Войти'),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
