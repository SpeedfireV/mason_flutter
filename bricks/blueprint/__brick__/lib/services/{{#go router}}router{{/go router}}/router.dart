import 'package:go_router/go_router.dart';


final router = GoRouter(routes: [
  // home page
  GoRoute(
      path: "/", name: "home", builder: (context, state) => const HomePage()),
  GoRoute(
      path: // TODO: CUSTOM_PATH,
      name: // TODO: NAME,
      builder: (context, state) =>
      // TODO: ROUTING_PAGE
      ),
  GoRoute(
    path: "/profile",
    name: "profile",
    builder: (context, state) {
      // TODO: TYPE VAR_NAME = state.extra as TYPE;

      return // TODO: ROUTING_PAGE
},
  ),]);
