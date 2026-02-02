import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:digiclinic_experiment/viewmodels/auth/auth_view_model.dart';
import 'package:digiclinic_experiment/viewmodels/auth/auth_status.dart';

class LoginView extends StatefulWidget {

  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthViewModel>();

    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Iniciar sesión',
                style: TextStyle(fontSize: 24),
              ),

              const SizedBox(height: 24),

              TextField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Correo electrónico'),
              ),

              const SizedBox(height: 12),

              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Contraseña'),
              ),

              const SizedBox(height: 12),

              CheckboxListTile(
                value: _rememberMe, 
                onChanged: (v) => setState(() => _rememberMe = v ?? false),
                title: const Text('Recordarme'),
              ),

              const SizedBox(height: 12),

              ElevatedButton(
                onPressed: auth.status == AuthStatus.loading
                  ? null
                  : () {
                    auth.login(
                      email: _emailController.text,
                      password: _passwordController.text,
                      rememberMe: _rememberMe
                    );
                  },
                child: const Text('Ingresar'),
              ),

              if (auth.status == AuthStatus.error)
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text(
                    auth.errorMessage ?? 'Error',
                    style: const TextStyle(color: Colors.red)
                  )
                )
            ],
          )
        )
      )
    );
  }
}