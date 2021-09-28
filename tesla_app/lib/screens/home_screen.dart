import 'package:flutter/material.dart';
import '../screens/home_controller.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //this animation need listnable
    return AnimatedBuilder(
      animation: HomeController(),
      builder: (context, snapshot) {
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
        ));
      }
    )
    ;
  }
}
