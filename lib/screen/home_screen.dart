import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:walletui/screen/graph_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final  size = MediaQuery.of(context).size;
    return Scaffold(

       appBar: AppBar(
         centerTitle: true,
         backgroundColor: Colors.black26,
         leading:  Icon(Icons.article,color: Colors.white,),
         title: Icon(Icons.cases_sharp,color: Colors.white,),
         actions: [
           Icon(Icons.send,color: Colors.white,),
           SizedBox(width: 20,)
         ],
       ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text('Hi Arafat',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text('Welcome your account \n just doing fine ',style: TextStyle(fontSize: 15,)),
            SizedBox(height: 30,),
            SizedBox(
              height: size.height/6,
              width: size.width,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 25,
                        backgroundColor: Colors.black54,
                        child: Icon(Icons.add,color: Colors.white,size: 25,),
                    ),
                    Text('Shedule a new payment \n on your account ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>GraphScreen()));
                      },
                        child: Icon(Icons.line_style,size: 80,color: Colors.white,))
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),

             SizedBox(
               height: size.height/3,
               width: size.width,
               child: Neumorphic(
                 child:  Column(
                   children: [
                     SizedBox(
                       height: size.height/7,
                       width: size.width,
                       child: Container(
                         decoration: BoxDecoration(
                             color: Colors.black26,
                             borderRadius: BorderRadius.circular(10)
                         ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             CircleAvatar(
                               radius: 25,
                               backgroundColor: Colors.black54,
                               child: Icon(Icons.bookmarks_rounded,color: Colors.white,size: 25,),
                             ),
                            SizedBox(
                              width: 25,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Balance',style: TextStyle(
                                    fontWeight: FontWeight.bold,color: Colors.white24,
                                    fontSize: 17
                                ),),
                                Text(' 1243243 ',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25
                                ),),
                              ],
                            )
                           ],
                         ),
                       ),
                     ),
                     SizedBox(
                       height: 15,
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         CircleAvatar(
                           radius:25,
                           backgroundColor: Colors.black54,
                           child: Icon(Icons.keyboard_double_arrow_right,color: Colors.white,size: 25,),
                         ),
                         Text('Nike Footwear',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                         Text('- 124.73',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54,
                             fontSize: 17),)
                       ],
                     ),
                     SizedBox(
                       height: 15,
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         CircleAvatar(
                           radius: 25,
                           backgroundColor: Colors.black54,
                           child: Icon(Icons.unarchive_rounded,color: Colors.white,size: 25,),
                         ),
                         Text('Starbucks \nnorreport std ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                         Text('- 68.25',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54,
                             fontSize: 17),)
                       ],
                     ),
                   
                   ],
                 ),
               ),
             ),

          ],
        ),
      ),
    );
  }
}
