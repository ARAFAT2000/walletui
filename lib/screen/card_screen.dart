import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    final  size = MediaQuery.of(context).size;
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black26,
        leading:  Icon(Icons.article,color: Colors.white,),
        title: Text('Card',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
        actions: [
          Icon(Icons.send,color: Colors.white,),
          SizedBox(width: 20,)
        ],
      ),
    body: Padding(
      padding: const EdgeInsets.only(left: 12,right: 12,top: 10),
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                  itemBuilder: (context,index){
                    return Container(

                      height: size.height/2,
                      width: size.width,
                      child: Image.asset('assets/images/download.jpg')

                    );
                  })),

          SizedBox(
            height: size.height/20,
          ),
          SizedBox(
            height: size.height/10,
            width: size.width,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.view_in_ar_rounded,color: Colors.white,size: 30,),
                  Text('View Card Details ',
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),

                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black54,
                    child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 20,),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height/30,
          ),
          SizedBox(
            height: size.height/10,
            width: size.width,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.lock_person_sharp,color: Colors.white,size: 30,),
                  Text('Pin Code ',
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),

                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black54,
                    child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 20,),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height/30,
          ),
          SizedBox(
            height: size.height/10,
            width: size.width,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.credit_card,color: Colors.white,size: 30,),
                  Text('Deactive Card ',
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),

                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black54,
                    child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 20,),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height/30,
          ),

        ],
      ),
    ),

    );
  }
}