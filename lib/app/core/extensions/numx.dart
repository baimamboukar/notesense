import 'package:flutter/material.dart';

extension Numx on num {
  Widget get vGap => SizedBox(height: toDouble());
  Widget get hGap => SizedBox(width: toDouble());
}
