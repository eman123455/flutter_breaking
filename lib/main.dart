import 'package:flutter/material.dart';
import 'package:flutter_breaking/utils/app_router.dart';
import 'package:flutter_breaking/utils/service_locator.dart';

void main() {
  startupServicesLocator();
  runApp( BeakingBadApp());
}

class BeakingBadApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateapproute,
    );
  }
}
