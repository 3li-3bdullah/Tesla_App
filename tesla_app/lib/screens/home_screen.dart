import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: LayoutBuilder(builder: (context, constrains) {
          return Stack(
            alignment: Alignment.center,
            children: [
             Padding(padding: EdgeInsets.symmetric(vertical: constrains.maxHeight * 0.1 ),
             child:SvgPicture.asset(
                "assets/icons/Car.svg",
                width: double.infinity,
              ),
             )
            ],
            Positioned(
              right: constrains.maxWidth * 0.05,
              // Now we need to animate the lock
              //once user click on it
              child: SvgPicture.asset("assets/icons/door_unlock.svg"),
            ),
          );
        }
      ),
    ))
    ;
  }
}
