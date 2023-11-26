import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:heroicons/heroicons.dart';
import 'package:notesense/app/core/extensions/contextx.dart';
import 'package:notesense/app/core/extensions/numx.dart';
import 'package:notesense/app/core/extensions/widgetx.dart';
import 'package:notesense/app/core/theme/colorscheme.dart';
import 'package:notesense/app/src/features/notes/features/notes/presentation/widgets/glass_circle_box.dart';
import 'package:notesense/app/src/features/notes/features/notes/presentation/widgets/glass_tile.dart';

@RoutePage()
class NoteSensePage extends StatelessWidget {
  const NoteSensePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GlassCircleBox(
        radius: 74,
        color: context.colorScheme.onPrimary.withOpacity(.1),
        child: const Center(
          child: HeroIcon(HeroIcons.microphone),
        ),
      ),
      backgroundColor: black,
      body: CustomScrollView(
        slivers: [
          54.vGap.sliver,
          const _Header(),
          14.vGap.sliver,
          const Calendar().sliver,
          24.vGap.sliver,
          const _QuickActions(),
          24.vGap.sliver,
          const PlansOfDayList().sliver,
          14.vGap.sliver,
          const Lectures().sliver,
          24.vGap.sliver,
          const PlansOfDayList().sliver,
        ],
      ),
    );
  }
}

class Calendar extends StatelessWidget {
  const Calendar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 84,
      child: ListView.builder(
        itemCount: 30,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GlassContainer.clearGlass(
            height: 84,
            width: 54,
            color: context.colorScheme.onPrimary.withOpacity(.85),
            borderRadius: const BorderRadius.all(Radius.circular(24)),
            child: Column(
              children: [
                const Text(
                  'Wed',
                ),
                Text(
                  '34',
                  style: context.style.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const Text(
                  'Sept',
                ),
              ],
            ).vPaddingx(8),
          ).hPaddingx(4);
        },
      ),
    );
  }
}

class Lectures extends StatelessWidget {
  const Lectures({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: 100,
      decoration: BoxDecoration(
        color: context.colorScheme.background,
        borderRadius: BorderRadius.circular(64),
      ),
      child: Center(
        child: ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.black12,
            child: HeroIcon(
              HeroIcons.microphone,
              color: Colors.white,
            ),
          ),
          title: const Text('12 notes'),
          subtitle: Text(
            'My Lectures',
            style: context.style.bodyLarge
                ?.copyWith(fontWeight: FontWeight.w900, fontSize: 18),
          ),
          trailing: GlassCircleBox(
            color: context.colorScheme.onBackground.withOpacity(.1),
            child: const Center(
              child: HeroIcon(HeroIcons.heart),
            ),
          ),
        ).hPadding,
      ),
    );
  }
}

class PlansOfDayList extends StatelessWidget {
  const PlansOfDayList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          12.hGap,
          const ShapedBox(
            color: orange,
          ),
          12.hGap,
          const ShapedBox(
            color: blue,
            maintainDown: false,
          ),
          12.hGap,
        ],
      ),
    );
  }
}

class ShapedBox extends StatelessWidget {
  const ShapedBox({
    required this.color,
    this.maintainDown = true,
    super.key,
  });
  final bool maintainDown;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final tasks = [
      const TaskSummary(
        title: 'Pray',
        isCompleted: true,
      ),
      const TaskSummary(
        title: 'Recording',
        isCompleted: false,
      ),
      const TaskSummary(
        title: 'Task',
        isCompleted: true,
      ),
    ];
    return Container(
      height: 300,
      width: context.width * .5,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: maintainDown ? Radius.zero : const Radius.circular(48),
          topRight: const Radius.circular(48),
          bottomLeft: const Radius.circular(48),
          bottomRight: !maintainDown ? Radius.zero : const Radius.circular(48),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  'Plan of the day',
                  style: context.style.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w900,
                    fontSize: 16.5,
                  ),
                ),
              ),
              GlassCircleBox(
                color: context.colorScheme.onPrimary.withOpacity(.1),
                child: const Center(
                  child: HeroIcon(HeroIcons.heart),
                ),
              ),
            ],
          ),
          14.vGap,
          for (int i = 0; i < tasks.length; i++)
            GlassTile(
              task: tasks[i],
            ),
        ],
      ).hPadding.vPaddingx(18),
    );
  }
}

class _QuickActions extends StatelessWidget {
  const _QuickActions();

  @override
  Widget build(BuildContext context) {
    final actions = ['All notes', 'Lectures', 'Grocery', 'Work', 'Personal'];
    return SizedBox(
      height: 48,
      child: ListView.builder(
        itemCount: actions.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Chip(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(24)),
            ),
            backgroundColor: Colors.transparent,
            side: const BorderSide(),
            label: Text(
              actions[index],
              style: context.style.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ).hPaddingx(4);
        },
      ),
    ).sliver;
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notesense',
          style: context.style.displaySmall!.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colorScheme.onPrimary,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const HeroIcon(
            HeroIcons.squares2x2,
            style: HeroIconStyle.outline,
          ),
        ),
      ],
    ).sliver.hPaddingSliver;
  }
}
