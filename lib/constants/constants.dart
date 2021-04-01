import 'package:flutter/material.dart';

abstract class Constants {
  BuildContext context;
  get width => MediaQuery.of(context).size.width;
  get height => MediaQuery.of(context).size.height;
}
