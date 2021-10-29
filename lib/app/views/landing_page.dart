import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pethero/app/controllers/home_controller.dart';
import 'package:pethero/app/views/home_page.dart';

class Landingpage extends StatelessWidget {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Landing Page"),
      ),

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Obx(
                () => Text(
                    '${controller.click.tap}',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30),
                  ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: IconButton(
                      color: Colors.grey, 
                      onPressed: () => controller.click.increment(), 
                      icon: Icon(Icons.add
                    )
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  child: IconButton(
                      color: Colors.grey, 
                      onPressed: () => controller.click.decrement(), 
                      icon: Icon(Icons.remove
                    )
                  ),
                ),                

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: IconButton(
                      color: Colors.grey, 
                      onPressed: () => Get.to(() =>Homepage()), 
                      icon: Icon(Icons.arrow_back_rounded)
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}