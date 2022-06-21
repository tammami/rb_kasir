import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'components/sidebar.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 248, 248, 255),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Sidebar(controller: controller),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  top: 16,
                  right: 16,
                  bottom: 16,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Monitoring Meja",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      GridView.count(
                        crossAxisCount: 10,
                        shrinkWrap: true,
                        children: [
                          ...List.generate(
                            100,
                            (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(
                                          0, 0), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    width: 75,
                                    height: 75,
                                    color:
                                        controller.mejaAktif.contains(index + 1)
                                            ? Color.fromARGB(255, 20, 20, 100)
                                            : Colors.grey.shade400,
                                    child: Center(
                                      child: Text(
                                        (index + 1).toString(),
                                        style: TextStyle(
                                          fontSize: 45,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
