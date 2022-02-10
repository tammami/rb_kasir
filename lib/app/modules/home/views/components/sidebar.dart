import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:rb_kasir/app/modules/home/controllers/home_controller.dart';
import 'package:rb_kasir/app/modules/home/views/widgets/sidebar_menu.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 8),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SidebarMenu(
                  controller: controller,
                  selectedMenu: controller.menuAktif.value == 1
                      ? Color.fromARGB(255, 211, 255, 212)
                      : Colors.white,
                  icon: Icons.brunch_dining_outlined,
                  title: "Makan Ditempat",
                  onTap: () => controller.menuAktif.value = 1,
                ),
                SidebarMenu(
                  controller: controller,
                  selectedMenu: controller.menuAktif.value == 2
                      ? Color.fromARGB(255, 211, 255, 212)
                      : Colors.white,
                  icon: Icons.takeout_dining_outlined,
                  title: "Bawa Pulang",
                  onTap: () => controller.menuAktif.value = 2,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
