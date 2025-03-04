// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$baseShellSroute];

RouteBase get $baseShellSroute => ShellRouteData.$route(
  navigatorKey: BaseShellSroute.$navigatorKey,
  factory: $BaseShellSrouteExtension._fromState,
  routes: [
    GoRouteData.$route(path: '/', factory: $RootRouteExtension._fromState),
    GoRouteData.$route(
      path: '/onboard',

      factory: $OnboardRouteExtension._fromState,
    ),
    GoRouteData.$route(
      path: '/maintenance',

      factory: $MaintenancePageRouteExtension._fromState,
    ),
    GoRouteData.$route(
      path: '/posts',

      factory: $PostsPageRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'create',

          factory: $PostCreatePageRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'setting',

          factory: $SettingPageRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'account',

              factory: $SettingsAccountPageRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'ui_style',

              factory: $SettingsUiStylePageRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'color_style',

              factory: $SettingsThemeColorPageRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'theme_mode',

              factory: $SettingsThemeModePageRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'license',

              factory: $LicensePageRouteExtension._fromState,
            ),
          ],
        ),
      ],
    ),
  ],
);

extension $BaseShellSrouteExtension on BaseShellSroute {
  static BaseShellSroute _fromState(GoRouterState state) => BaseShellSroute();
}

extension $RootRouteExtension on RootRoute {
  static RootRoute _fromState(GoRouterState state) => const RootRoute();

  String get location => GoRouteData.$location('/');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $OnboardRouteExtension on OnboardRoute {
  static OnboardRoute _fromState(GoRouterState state) => const OnboardRoute();

  String get location => GoRouteData.$location('/onboard');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MaintenancePageRouteExtension on MaintenancePageRoute {
  static MaintenancePageRoute _fromState(GoRouterState state) =>
      const MaintenancePageRoute();

  String get location => GoRouteData.$location('/maintenance');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PostsPageRouteExtension on PostsPageRoute {
  static PostsPageRoute _fromState(GoRouterState state) =>
      const PostsPageRoute();

  String get location => GoRouteData.$location('/posts');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PostCreatePageRouteExtension on PostCreatePageRoute {
  static PostCreatePageRoute _fromState(GoRouterState state) =>
      const PostCreatePageRoute();

  String get location => GoRouteData.$location('/posts/create');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingPageRouteExtension on SettingPageRoute {
  static SettingPageRoute _fromState(GoRouterState state) =>
      const SettingPageRoute();

  String get location => GoRouteData.$location('/posts/setting');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsAccountPageRouteExtension on SettingsAccountPageRoute {
  static SettingsAccountPageRoute _fromState(GoRouterState state) =>
      const SettingsAccountPageRoute();

  String get location => GoRouteData.$location('/posts/setting/account');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsUiStylePageRouteExtension on SettingsUiStylePageRoute {
  static SettingsUiStylePageRoute _fromState(GoRouterState state) =>
      const SettingsUiStylePageRoute();

  String get location => GoRouteData.$location('/posts/setting/ui_style');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsThemeColorPageRouteExtension on SettingsThemeColorPageRoute {
  static SettingsThemeColorPageRoute _fromState(GoRouterState state) =>
      const SettingsThemeColorPageRoute();

  String get location => GoRouteData.$location('/posts/setting/color_style');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsThemeModePageRouteExtension on SettingsThemeModePageRoute {
  static SettingsThemeModePageRoute _fromState(GoRouterState state) =>
      const SettingsThemeModePageRoute();

  String get location => GoRouteData.$location('/posts/setting/theme_mode');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LicensePageRouteExtension on LicensePageRoute {
  static LicensePageRoute _fromState(GoRouterState state) =>
      const LicensePageRoute();

  String get location => GoRouteData.$location('/posts/setting/license');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
