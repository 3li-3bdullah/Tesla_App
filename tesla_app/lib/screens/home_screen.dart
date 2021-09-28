import 'package:flutter/material.dart';
import 'package:tesla_app/contanins.dart';
import '../screens/home_controller.dart';

class HomeScreen extends StatelessWidget {
  final HomeController _controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      //it rebuilds the widget tree when any changes happend on our controller
       //this animation need listnable
      animation:_controller,
      builder: (context, _) {
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
                  //Once user click on it
                  // Now let add animation
                  child: GestureDetector(
                    onTap: _controller.updateRightDoorLock,
                    child: AnimatedSwitcher(
                      //Still shows no animation why? because both of them are same
                      //widget flutter think they are same
                      duration: defaultDuration ,
                      child: _controller.isRightDoorLock ? SvgPicture.asset("assets/icons/door_lock.svg" ,
                      
                      )
                    :SvgPicture.asset("assets/icons/door_unlock.svg"),
                     )
                    )
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
