import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/routes/app_routes.dart';
import '../../custom/inputs/inputs.dart';

class RegisterForm extends ConsumerWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textStyles = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 50),
          Text('Register', style: textStyles.titleLarge),
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
                  showSnackbar(context, 'Registrado correctamente');
                  context.pushNamed(AppRoutes.homePage);
                },
                child: const Text('Registrarse'),
              )),
          const Spacer(flex: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('¿Ya tienes una cuenta?'),
              TextButton(
                  onPressed: () {
                    context.pushNamed(AppRoutes.loginPage);
                  },
                  child: const Text('Inicia sesión'))
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
