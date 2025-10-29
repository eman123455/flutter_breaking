import 'package:flutter/material.dart';
import 'package:flutter_breaking/constants/my_colors.dart';

class OfflineWidget extends StatelessWidget {
  const OfflineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20,),
            const Text('not connected to internet',
            style: TextStyle(
              fontSize: 22,
              color: MyColors.myGrey
            ),
            ),
            Image.asset('assets/images/undraw_no-signal_nqfa.png')
          ],
        ),
      ),
    );
  }
}