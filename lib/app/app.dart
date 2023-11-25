import 'package:flutter/material.dart';
import 'package:notesense/app/core/theme/themedata.dart';

class NoteSense extends StatefulWidget {
  const NoteSense({super.key});

  @override
  State<NoteSense> createState() => _NoteSenseState();
}

class _NoteSenseState extends State<NoteSense> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'notesense',
      theme: NoteSenseTheme.light,
      darkTheme: NoteSenseTheme.dark,
    );
  }
}
