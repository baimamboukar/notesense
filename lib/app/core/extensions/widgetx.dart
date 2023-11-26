import 'package:flutter/material.dart';

extension WidgetX on Widget {
  SliverToBoxAdapter get sliver => SliverToBoxAdapter(child: this);
  Widget get hPadding =>
      Padding(padding: const EdgeInsets.symmetric(horizontal: 14), child: this);
  Widget hPaddingx(double x) =>
      Padding(padding: EdgeInsets.symmetric(horizontal: x), child: this);
  Widget get vPadding =>
      const Padding(padding: EdgeInsets.symmetric(vertical: 14));
  Widget vPaddingx(double x) => Padding(
        padding: EdgeInsets.symmetric(vertical: x),
        child: this,
      );
  SliverPadding get hPaddingSliver => SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        sliver: this,
      );
  SliverPadding get vPaddingSliver => SliverPadding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        sliver: this,
      );
}
