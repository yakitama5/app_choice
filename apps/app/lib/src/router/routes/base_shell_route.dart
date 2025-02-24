import 'package:cores_designsystem/common_assets.dart';
import 'package:cores_designsystem/keys.dart';
import 'package:cores_designsystem/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/home/pages/home_page.dart';
import 'package:flutter_app/src/onboard/pages/onboard_page.dart';
import 'package:flutter_app/src/settings/pages/settings_account_page.dart';
import 'package:flutter_app/src/settings/pages/settings_page.dart';
import 'package:flutter_app/src/settings/pages/settings_theme_color_page.dart';
import 'package:flutter_app/src/settings/pages/settings_theme_mode_page.dart';
import 'package:flutter_app/src/settings/pages/settings_ui_style_page.dart';
import 'package:go_router/go_router.dart';

part 'base_shell_route.g.dart';

@TypedShellRoute<BaseShellSroute>(
  routes: [
    TypedGoRoute<RootRoute>(path: RootRoute.path),
    TypedGoRoute<OnboardRoute>(path: OnboardRoute.path),
    TypedGoRoute<MaintenancePageRoute>(path: MaintenancePageRoute.path),
    TypedGoRoute<HomePageRoute>(
      path: HomePageRoute.path,
      routes: [
        TypedGoRoute<SettingPageRoute>(
          path: SettingPageRoute.path,
          routes: [
            TypedGoRoute<SettingsAccountPageRoute>(
              path: SettingsAccountPageRoute.path,
            ),
            TypedGoRoute<SettingsUiStylePageRoute>(
              path: SettingsUiStylePageRoute.path,
            ),
            TypedGoRoute<SettingsThemeColorPageRoute>(
              path: SettingsThemeColorPageRoute.path,
            ),
            TypedGoRoute<SettingsThemeModePageRoute>(
              path: SettingsThemeModePageRoute.path,
            ),
            TypedGoRoute<LicensePageRoute>(path: LicensePageRoute.path),
          ],
        ),
      ],
    ),
  ],
)
class BaseShellSroute extends ShellRouteData {
  static final GlobalKey<NavigatorState> $navigatorKey = rootNavigatorKey;

  // ルート設定のために定義だけ
  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) =>
      navigator;
}

class RootRoute extends GoRouteData {
  const RootRoute();

  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
  // ぐるぐる回すだけ
  const Scaffold(body: Center(child: CircularProgressIndicator.adaptive()));
}

class OnboardRoute extends GoRouteData {
  const OnboardRoute();

  static const path = '/onboard';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const OnboardPage();
}

class HomePageRoute extends GoRouteData {
  const HomePageRoute();

  static const path = '/home';

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}

class MaintenancePageRoute extends GoRouteData {
  const MaintenancePageRoute();

  static const path = '/maintenance';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage<Page<dynamic>>(child: MaintenancePage());
  }
}

class SettingPageRoute extends GoRouteData {
  const SettingPageRoute();

  static const path = 'setting';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const MaterialPage(child: SettingsPage(), fullscreenDialog: true);
}

class LicensePageRoute extends GoRouteData {
  const LicensePageRoute();

  static const path = 'license';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return LicensePage(
      applicationIcon: CommonAssets.images.logoDark.image(
        height: 120,
        width: 120,
      ),
    );
  }
}

class SettingsAccountPageRoute extends GoRouteData {
  const SettingsAccountPageRoute();

  static const path = 'account';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsAccountPage();
}

class SettingsUiStylePageRoute extends GoRouteData {
  const SettingsUiStylePageRoute();

  static const path = 'ui_style';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsUiStylePage();
}

class SettingsThemeColorPageRoute extends GoRouteData {
  const SettingsThemeColorPageRoute();

  static const path = 'color_style';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsThemeColorPage();
}

class SettingsThemeModePageRoute extends GoRouteData {
  const SettingsThemeModePageRoute();

  static const path = 'theme_mode';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsThemeModePage();
}
