import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:notesense/app/core/theme/themedata.dart';
import 'package:notesense/app/src/router/router.dart';

class NoteSense extends StatefulWidget {
  const NoteSense({super.key});

  @override
  State<NoteSense> createState() => _NoteSenseState();
}

class _NoteSenseState extends State<NoteSense> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        useDivider: false,
        opacity: 0.60,
      ),
      child: MaterialApp.router(
        title: 'notesense',
        routerConfig: GetIt.I<NoteSenseRouter>().config(),
        theme: NoteSenseTheme.light,
        darkTheme: NoteSenseTheme.dark,
      ),
    );
  }
}
