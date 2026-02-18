import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:digiclinic_experiment/theme/app_colors.dart';
import 'package:digiclinic_experiment/theme/app_text_styles.dart';
import 'package:digiclinic_experiment/widgets/inputs/app_text_field.dart';
import 'package:digiclinic_experiment/widgets/popup.dart';
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

  final _emailFocus = FocusNode();
  final _passwordFocus = FocusNode();

  bool _rememberMe = false;
  AuthStatus? _previousStatus;

  late StreamSubscription _authSubscription;

  @override
  void initState() {
    super.initState();

    final auth = context.read<AuthViewModel>();

    _authSubscription = auth.events.listen((event) {
      if (!mounted) return;

      Popup.show(
        context,
        message: event.message,
        type: PopupType.error
      );
    });

    _emailFocus.addListener(() => setState(() {}));
    _passwordFocus.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _emailFocus.dispose();
    _authSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthViewModel>();

    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800, maxHeight: 800),
          child: Card(
            elevation: 12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Iniciar sesión',
                    style: AppTextStyles.headlineRegular,
                  ),
              
                  const SizedBox(height: 24),
                  
                  const Icon(
                    Icons.account_circle,
                    color: AppColors.midDarkBlue,
                    size: 80.0,
                  ),
              
                  const SizedBox(height: 24),
              
                  AppTextField(
                    maxWidth: 500,
                    label: 'Correo electrónico',
                    controller: _emailController,
                    icon: Icons.mail
                  ),
                  
                  const SizedBox(height: 16),
              
                  AppTextField(
                    maxWidth: 500,
                    label: 'Contraseña', 
                    controller: _passwordController,
                    obscureText: true,
                    showVisibilityToggle: true,
                  ),
              
                  const SizedBox(height: 24),
              
                  Align(
                    alignment: Alignment.center,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 500),
                      child: GestureDetector(
                        onTap: () => setState(() => _rememberMe = !_rememberMe),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Checkbox(
                              value: _rememberMe,
                              onChanged: (v) => setState(() => _rememberMe = v ?? false),
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              'Recordarme',
                              style: AppTextStyles.inputLabel,
                            ),
                          ],
                        ),
                      ),
                    )
                  ),
              
                  const SizedBox(height: 24),
              
                  SizedBox(
                    width: 350,
                    height: 50,
                    child: FilledButton(
                      onPressed: auth.status == AuthStatus.loading
                        ? null : () {
                          auth.login(
                            email: _emailController.text,
                            password: _passwordController.text,
                          rememberMe: _rememberMe
                          );
                        },
                      child: auth.status == AuthStatus.loading
                        ? const CircularProgressIndicator()
                        : const Text('Ingresar')
                    ),
                  ),
                ],
              ),
            ),
          )
        )
      )
    );
  }
}