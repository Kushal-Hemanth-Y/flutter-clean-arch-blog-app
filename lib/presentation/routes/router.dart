part of 'router_imports.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.custom();

  @override
  List<AutoRoute> get routes => [
        CustomRoute(
            page: SplashRoute.page,
            path: '/',
            initial: true,
            transitionsBuilder: TransitionsBuilders.slideLeft),
        CustomRoute(
            page: OnBoardRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft),
        CustomRoute(
            page: AuthRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft),
        CustomRoute(
            page: LoginRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft),
        CustomRoute(
            page: RegisterRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft),
        CustomRoute(
            page: GeneralRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft),
        CustomRoute(
            page: HomeDetailsRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft),
      ];
}
