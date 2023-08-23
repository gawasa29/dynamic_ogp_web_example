import 'package:dynamic_ogp_web_example/features/blue/blue_screen.dart';
import 'package:dynamic_ogp_web_example/features/home/home_screen.dart';
import 'package:dynamic_ogp_web_example/features/pink/pink_screen.dart';
import 'package:dynamic_ogp_web_example/features/yellow/yellow_screen.dart';
import 'package:go_router/go_router.dart';

GoRouter buildRouter() {
  return GoRouter(
    initialLocation: HomeScreen.routePath,
    routes: [
      GoRoute(
        path: HomeScreen.routePath,
        builder: (_, state) => const HomeScreen(),
      ),
      GoRoute(
        path: BlueScreen.routePath,
        builder: (_, state) => const BlueScreen(),
      ),
      GoRoute(
        path: PinkScreen.routePath,
        builder: (_, state) => const PinkScreen(),
      ),
      GoRoute(
        path: YellowScreen.routePath,
        builder: (_, state) => const YellowScreen(),
      ),
    ],
  );
}
