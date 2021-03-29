import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home/home_page.dart';
import 'home/http/http_page.dart';
import 'home/http/repository/http_bindings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => HomePage(), children: [
          GetPage(
            name: '/http',
            page: () => HttpPage(),
            binding:HttpBindings(),
          ),
        ])
      ],
    );
  }
}
