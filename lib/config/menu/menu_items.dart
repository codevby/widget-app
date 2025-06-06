import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Buttons',
    subtitle: 'Several types of buttons',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Cards',
    subtitle: 'Several types of Cards',
    link: '/cards',
    icon: Icons.credit_card_outlined,
  ),
  MenuItems(
    title: 'Progress Indicators',
    subtitle: 'Generals and controlled',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItems(
    title: 'Snackbars',
    subtitle: 'Snackbars in Flutter',
    link: '/snackbars',
    icon: Icons.info_outline_rounded,
  ),
];
