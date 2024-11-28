

import 'package:flutter/material.dart';
import 'package:graduation_project/providers/my_provider.dart';
import 'package:provider/provider.dart';
import 'my_app.dart';


void main() {
  runApp(ChangeNotifierProvider(
    create: (context)=> MyProvider(),

      child: const MyApp()));
}



