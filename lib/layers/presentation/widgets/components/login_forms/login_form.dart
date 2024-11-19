import 'package:flights_app/config/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../custom/inputs/inputs.dart';

class LoginForm extends ConsumerWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textStyles = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 50),
          Text('Login', style: textStyles.titleLarge),
          const SizedBox(height: 40),
          TextFormsModel(
              textInputType: TextInputType.emailAddress,
              labelText: "Email",
              icon: Icons.email,
              onChanged: (value) {}),
          const SizedBox(height: 30),
          TextFormsModel(
            textInputType: TextInputType.visiblePassword,
            labelText: "Password",
            onChanged: (value) {},
            icon: Icons.lock,
          ),
          const SizedBox(height: 30),
          SizedBox(
              width: double.infinity,
              height: 60,
              child: FilledButton(
                onPressed: () {
                  showSnackbar(context, 'Inicio de sesión correcto');
                  context.pushNamed(AppRoutes.homePage);
                },
                child: const Text('Iniciar sesión'),
              )),
          const Spacer(flex: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('¿No tienes cuenta?'),
              TextButton(
                  onPressed: () {
                    context.pushNamed(AppRoutes.registerPage);
                  },
                  child: const Text('Crea una aquí'))
            ],
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
}
