import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    final  size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Add Screen'),
      ),

      body: Column(
        children: [
          SizedBox(
            height: size.height/3,
            width: size.width,
            child: Neumorphic(
              child:  Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                     TextField(
                       decoration: InputDecoration(
                         prefixIcon: Icon(Icons.attach_money),
                        hintText: 'Enter cost'
                       ),
                     ),
                     SizedBox(
                       height: size.height/15,
                     ),
                     TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.invert_colors),
                          hintText: 'Enter Income'
                      ),
                    ),

                    SizedBox(
                      height: size.height/44,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                      ElevatedButton(
                          onPressed: (){}, 
                          child: Text('Store'))

                      ],
                    )
                    
                    


                   


                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}