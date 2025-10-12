import 'package:flutter/material.dart';
import 'package:flutter_breaking/utils/app_router.dart';

void main() {
  runApp( BeakingBadApp());
}

class BeakingBadApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateapproute,
    );
  }
}
