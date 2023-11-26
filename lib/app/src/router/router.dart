/// Setup auto_route here
library;

import 'package:auto_route/auto_route.dart';
import 'package:notesense/app/src/router/router.gr.dart';

@AutoRouterConfig()
class NoteSenseRouter extends $NoteSenseRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: Welcome.page, path: '/', initial: true),
        AutoRoute(page: Onboarding.page, path: '/onboarding'),
      ];
}
