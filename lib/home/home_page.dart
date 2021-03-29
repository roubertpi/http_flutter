import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Guia acesso da Api')),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () => Get.toNamed('/http'),
                  child: Text('HTTP',
                      style: TextStyle(
                        fontSize: 20,
                      ))),
              TextButton(
                  onPressed: () {},
                  child: Text('DIO', style: TextStyle(fontSize: 20))),
              TextButton(
                  onPressed: () {},
                  child: Text('getConect', style: TextStyle(fontSize: 20)))
            ],
          ),
        ));
  }
}
