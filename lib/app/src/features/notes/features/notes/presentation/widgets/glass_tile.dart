import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:heroicons/heroicons.dart';
import 'package:notesense/app/core/extensions/contextx.dart';
import 'package:notesense/app/core/extensions/numx.dart';
import 'package:notesense/app/core/extensions/widgetx.dart';

class TaskSummary {
  const TaskSummary({
    required this.title,
    required this.isCompleted,
  });
  final String title;
  final bool isCompleted;
}

class GlassTile extends StatelessWidget {
  const GlassTile({required this.task, super.key});
  final TaskSummary task;

  @override
  Widget build(BuildContext context) {
    return GlassContainer.clearGlass(
      height: 54,
      width: context.width,
      color: context.colorScheme.onPrimary.withOpacity(.1),
      borderColor: Colors.transparent,
      borderRadius: const BorderRadius.all(Radius.circular(64)),
      child: Row(
        children: [
          Container(
            height: 38,
            width: 38,
            decoration: BoxDecoration(
              color: task.isCompleted ? Colors.black12 : Colors.transparent,
              shape: BoxShape.circle,
              border: !task.isCompleted
                  ? Border.all(
                      color: context.colorScheme.onBackground.withOpacity(.5),
                    )
                  : null,
            ),
            child: task.isCompleted
                ? HeroIcon(
                    HeroIcons.checkCircle,
                    color: context.colorScheme.onPrimary.withOpacity(.5),
                  )
                : const SizedBox.shrink(),
          ).hPaddingx(8),
          4.hGap,
          Text(
            task.title,
            style: context.style.bodyLarge?.copyWith(
              fontWeight:
                  !task.isCompleted ? FontWeight.bold : FontWeight.normal,
              decoration: !task.isCompleted ? null : TextDecoration.lineThrough,
            ),
          ),
        ],
      ),
    ).vPaddingx(4);
  }
}
