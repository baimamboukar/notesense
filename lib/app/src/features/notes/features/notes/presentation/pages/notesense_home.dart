import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:notesense/app/core/extensions/contextx.dart';
import 'package:notesense/app/core/extensions/numx.dart';
import 'package:notesense/app/core/extensions/widgetx.dart';

@RoutePage()
class NoteSensePage extends StatelessWidget {
  const NoteSensePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          54.vGap.sliver,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Notesense',
                style: context.style.displaySmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              IconButton(
                onPressed: () {},
                icon: const HeroIcon(
                  HeroIcons.squares2x2,
                  style: HeroIconStyle.outline,
                ),
              ),
            ],
          ).sliver.hPaddingSliver,
        ],
      ),
    );
  }
}
