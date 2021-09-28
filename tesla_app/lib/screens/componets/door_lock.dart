import 'package:flutter/material.dart';
import '../../contanins.dart';
import 'package:flutter_svg/flutter_svg.dart';
class DoorLock extends StatelessWidget {
  const DoorLock({
    Key key,
    @required HomeController controller, required this.press,required this.isLock,
  }) :  super(key: key);

 
 final VoidCallback press;
 final bool isLock;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: AnimatedSwitcher(
        //Still shows no animation why? because both of them are same
        //widget flutter think they are same
        //I added key , so now flutter knows they are not same 
        // Now its look liek what we want , but not 100%
        // We need to add jumping effects
        switchInCurve: Curves.easeInOutBack,
        //This what we wnat 
        transitionBuilder: (child, animation) => ScaleTransition(scale: animation,child:child),
        duration: defaultDuration ,
        child: isLock ? SvgPicture.asset("assets/icons/door_lock.svg" ,
        key: ValueKey("lock")
        )
      :SvgPicture.asset("assets/icons/door_unlock.svg",
      key: ValueKey("unlock")
      ),
       )
      );
  }
}
