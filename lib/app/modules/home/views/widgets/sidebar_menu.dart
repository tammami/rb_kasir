import 'package:flutter/material.dart';
import 'package:rb_kasir/app/modules/home/controllers/home_controller.dart';

class SidebarMenu extends StatelessWidget {
  const SidebarMenu({
    Key? key,
    required this.controller,
    required this.selectedMenu,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final HomeController controller;
  final Color selectedMenu;
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        color: selectedMenu,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: InkWell(
            splashColor: Colors.blue.shade200,
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Ink(
                child: Row(
                  children: [
                    Icon(icon),
                    SizedBox(width: 8),
                    Text(
                      title,
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
