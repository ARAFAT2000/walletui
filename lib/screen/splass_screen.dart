import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:walletui/screen/dashboard_screen.dart';
import 'package:walletui/screen/home_screen.dart';


class SplassScreen extends StatefulWidget {
  const SplassScreen({super.key});

  @override
  State<SplassScreen> createState() => _SplassScreenState();
}

class _SplassScreenState extends State<SplassScreen> {
  Future<void> services()async {
    Timer(Duration(seconds: 3), () {
     Navigator.pushAndRemoveUntil(context,
         MaterialPageRoute(builder: (context)=>DashBoardScreen()), (route) => false);
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    services();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Text('WALLET',style: TextStyle(
            color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 30
          ),),
             

             SizedBox(
               height: 20,
             ),
             Center(
                 child: Image.asset('assets/images/icon.jpg',
                   height: 300,
                 width: 400,

                 ))

          ],
        ),
      ),
    );
  }
}
