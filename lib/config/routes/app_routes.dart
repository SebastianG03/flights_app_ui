import 'package:go_router/go_router.dart';

import '../../layers/presentation/screens/screens.dart';

class AppRoutes {
  AppRoutes();

  //Route naems
  // Principal route names
  static const String loginPage = 'login';
  static const String registerPage = 'register';

  //Route names -> After login or register
  static const String homePage = 'home';
  static const String explorePage = 'explore';
  static const String profilePage = 'profile';
  // Reserve service route names
  static const String reservePage = 'reserveServices';

  //User -> user views
  static const String userFlights = 'user_flights';
  static const String userTransport = 'user_transport';
  static const String userHotels = 'user_hotels';

  //Paths
  // Principal route paths
  static const String _loginPageRoute = '/login';
  static const String _registerPageRoute = '/register';

  //Route paths -> After login or register. login/register -> home
  static const String _homePageRoute = '/home';
  static const String _explorePageroute = '/explore';
  static const String _profilePageRoute = '/profile';
  // Reserve service route paths
  static const String _reservesPageRoute = 'reserveFlight';

  //User -> user views paths
  static const String _userPageRoute = '/user';
  // From user reserves. user -> reserves -> specific reserves
  static const String _userFlightsRoute = '/user_flights';
  static const String _userTransportRoute = '/user_transport';
  static const String _userHotelsRoute = '/user_hotels';

  final appRoutes = GoRouter(initialLocation: _homePageRoute, routes: [
    //Login
    GoRoute(
      name: loginPage,
      path: _loginPageRoute,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: registerPage,
      path: _registerPageRoute,
      builder: (context, state) => const RegisterScreen(),
    ),
    //Home
    GoRoute(
      name: homePage,
      path: _homePageRoute,
      builder: (context, state) => const TemplateHomeScreen(
        child: HomeScreen(),
      ),
    ),
    GoRoute(
      name: explorePage,
      path: _explorePageroute,
      builder: (context, state) => const TemplateHomeScreen(
        initialIndex: 1,
        child: MapScreen(),
      ),
    ),
    GoRoute(
      name: profilePage,
      path: _profilePageRoute,
      builder: (context, state) => const TemplateHomeScreen(
        initialIndex: 2,
        child: ProfileScreen(),
      ),
    ),
  ]);
}
