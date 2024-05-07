import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class LockScreen extends StatefulWidget {
  const LockScreen({super.key});

  @override
  State<LockScreen> createState() => _LockScreenState();
}

class _LockScreenState extends State<LockScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                flex: 2,
                child: NeumorphicBackground(

                 child: SizedBox(

                     child: Center(
                         child: Neumorphic(
                           style: NeumorphicStyle(
                             shadowDarkColor: Colors.lightGreenAccent,
                             boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                           ),
                           child: Container(
                             margin: EdgeInsets.all(10),
                             height: 150,
                               width: 150,
                               decoration: BoxDecoration(
                                shape: BoxShape.circle,

                                
                               ),
                               child: Center(child: Text('Your Wallet ',))),
                           curve: Neumorphic.DEFAULT_CURVE,
                           duration: Duration(seconds: 10),
                         ))),
                 
                )),
            
            Expanded(
              child: Neumorphic(
                padding: EdgeInsets.all(40),
                child: PinCodeTextField(

                    appContext: (context),
                    length: 4,
                ),
              ),
            ),
      
            Expanded(
              flex: 3,
                child: Neumorphic(
                  child:GridView.builder(
                    itemCount: 9,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                      itemBuilder: (context,index){
                        return NeumorphicRadio(child: Center(child: Text('$index')),);
                      })
                )),

          ],
        ),
      ),
    );
  }
}
