// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:notesense/app/src/features/notes/features/notes/presentation/pages/notesense_home.dart'
    as _i1;
import 'package:notesense/app/src/features/onboarding/presentation/pages/onboarding.dart'
    as _i2;
import 'package:notesense/app/src/features/onboarding/presentation/pages/welcome.dart'
    as _i3;

abstract class $NoteSenseRouter extends _i4.RootStackRouter {
  $NoteSenseRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    NoteSenseRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.NoteSensePage(),
      );
    },
    Onboarding.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.Onboarding(),
      );
    },
    Welcome.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Welcome(),
      );
    },
  };
}

/// generated route for
/// [_i1.NoteSensePage]
class NoteSenseRoute extends _i4.PageRouteInfo<void> {
  const NoteSenseRoute({List<_i4.PageRouteInfo>? children})
      : super(
          NoteSenseRoute.name,
          initialChildren: children,
        );

  static const String name = 'NoteSenseRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.Onboarding]
class Onboarding extends _i4.PageRouteInfo<void> {
  const Onboarding({List<_i4.PageRouteInfo>? children})
      : super(
          Onboarding.name,
          initialChildren: children,
        );

  static const String name = 'Onboarding';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Welcome]
class Welcome extends _i4.PageRouteInfo<void> {
  const Welcome({List<_i4.PageRouteInfo>? children})
      : super(
          Welcome.name,
          initialChildren: children,
        );

  static const String name = 'Welcome';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
