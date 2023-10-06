import 'package:go_router/go_router.dart';
import 'package:shop_app/view/cart_screen.dart';
import 'package:shop_app/view/fav_screen.dart';
import 'package:shop_app/view/home_screen.dart';
import 'package:shop_app/view/login_screen.dart';

const String loginRoute = '/login';
const String homeRoute = '/home';
const String cartRoute = '/cart';
const String favRoute = '/fav';

GoRouter router() {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: homeRoute,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: cartRoute,
        builder: (context, state) => const CartScreen(),
      ),
      GoRoute(
        path: favRoute,
        builder: (context, state) => const FavScreen(),
      ),
    ],
    initialLocation: '/',
  );
}
