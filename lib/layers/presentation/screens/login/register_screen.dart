import 'package:flights_app/layers/presentation/widgets/components/login_forms/register_form.dart';
import 'package:flights_app/layers/presentation/widgets/shared/geometrical_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scaffoldBackgroundColor = Theme.of(context).scaffoldBackgroundColor;

    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          body: GeometricalBackground(
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 80),
                  // Icon Banner
                  const Icon(
                    Icons.airplane_ticket_rounded,
                    color: Colors.white,
                    size: 100,
                  ),
                  const SizedBox(height: 60),
                  Container(
                    height:
                        size.height - 260, // 80 los dos sizebox y 100 el ícono
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: scaffoldBackgroundColor,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(100)),
                    ),
                    child: const RegisterForm(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
