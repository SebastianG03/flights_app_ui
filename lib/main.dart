import 'package:flights_app/config/routes/app_routes.dart';
import 'package:flights_app/config/theme/app_theme.dart';
import 'package:flights_app/layers/presentation/screens/home/home.dart';
import 'package:flights_app/layers/presentation/screens/home/home_screen.dart';
import 'package:flights_app/layers/presentation/screens/home/profile_screen.dart';
import 'package:flights_app/layers/presentation/screens/home/template_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
  ]);

  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => MyAppState();
}

class MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flight Project',
      home: const TemplateScreen(
        initialIndex: 1,
        child: HomeScreen(),
      ),
      // routerConfig: AppRoutes().appRoutes,
      theme: AppTheme.lightTheme,
    );
  }
}
