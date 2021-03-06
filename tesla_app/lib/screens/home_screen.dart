import 'package:flutter/material.dart';
import 'package:tesla_app/contanins.dart';
import 'package:tesla_app/screens/componets/tesla_bottom_navigationbar.dart';
import '../screens/home_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './componets/door_lock.dart';
//import 'componets/tesla_bottom_navigationbar.dart';


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
           bottomNavigationBar: TeslaBottomNavigationBar(
             onTap: (index){},
             selectedTab: 0,
           ),
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
                
                Positioned(
                  right: constrains.maxWidth * 0.05,
                  // Now we need to animate the lock
                  //Once user click on it
                  // Now let add animation
                  child: DoorLock(isLock: _controller.isRightDoorLock,
                   press: _controller.updateRightDoorLock),
                ),

                Positioned(
                  left: constrains.maxWidth * 0.05,
                  child: DoorLock(isLock: _controller.isLeftDoorLock,
                   press: _controller.updateLeftDoorLock),
                ),

                 Positioned(
                  top: constrains.maxHeight * 0.13,
                  child: DoorLock(isLock: _controller.isBonnetLock,
                   press: _controller.updateBonnetDoorLock),
                ),
                 Positioned(
                  bottom: constrains.maxHeight * 0.17,
                  child: DoorLock(isLock: _controller.isTrunkLock,
                   press: _controller.updateTrunkDoorLock),
                ),
                ],
              );
            }
          ),
        ));
      }
    )
    ;
  }
}
