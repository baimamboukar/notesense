import 'package:flutter/material.dart';

extension WidgetX on Widget {
  SliverToBoxAdapter get sliver => SliverToBoxAdapter(child: this);
  Widget get hPadding =>
      const Padding(padding: EdgeInsets.symmetric(horizontal: 14));
  Widget get vPadding =>
      const Padding(padding: EdgeInsets.symmetric(vertical: 14));
  SliverPadding get hPaddingSliver => SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        sliver: this,
      );
  SliverPadding get vPaddingSliver => SliverPadding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        sliver: this,
      );
}
