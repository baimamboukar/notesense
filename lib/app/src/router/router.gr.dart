// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:notesense/app/src/features/onboarding/presentation/pages/onboarding.dart'
    as _i1;
import 'package:notesense/app/src/features/onboarding/presentation/pages/welcome.dart'
    as _i2;

abstract class $NoteSenseRouter extends _i3.RootStackRouter {
  $NoteSenseRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    Onboarding.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.Onboarding(),
      );
    },
    Welcome.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.Welcome(),
      );
    },
  };
}

/// generated route for
/// [_i1.Onboarding]
class Onboarding extends _i3.PageRouteInfo<void> {
  const Onboarding({List<_i3.PageRouteInfo>? children})
      : super(
          Onboarding.name,
          initialChildren: children,
        );

  static const String name = 'Onboarding';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.Welcome]
class Welcome extends _i3.PageRouteInfo<void> {
  const Welcome({List<_i3.PageRouteInfo>? children})
      : super(
          Welcome.name,
          initialChildren: children,
        );

  static const String name = 'Welcome';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
