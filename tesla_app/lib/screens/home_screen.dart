import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: LayoutBuilder(builder: (context, constrains) {
          return Stack(
            children: [
             Padding(padding: EdgeInsets.symmetric(vertical: constrains.maxHeight * 0.1 ),
             child:SvgPicture.asset(
                "assets/icons/Car.svg",
                width: double.infinity,
              ),
             )
            ],
            Positioned(child: SvgPicture.asset("assets/icons/door_lock.svg"),),
          );
        }
      ),
    ))
    ;
  }
}
