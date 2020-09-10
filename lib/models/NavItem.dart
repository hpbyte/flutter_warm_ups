import 'package:flutter/material.dart';

class NavItem {
  final int id;
  final String icon;
  final Widget destination;

  NavItem({
    this.id,
    this.icon,
    this.destination,
  });

  bool destinationCheck() {
    return destination != null;
  }
}
