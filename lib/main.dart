

import 'package:flutter/material.dart';
import 'dart:math';




void main() {
  runApp( MaterialApp(home:
   Scaffold(
    backgroundColor: Colors.indigo,
    appBar: AppBar(

            title: const TextField(
              decoration: InputDecoration(
                hintText: 'تطابق الصور',
                prefixIcon: Icon(Icons.search)
              ),
            ),
            actions: [
              IconButton(
               icon:const Icon(Icons.more_vert),
               onPressed: () {
    //             showMenu(context:context,position:const RelativeRect.fromLTRB(5.0, 5.0, 0.0, 0.0), items:const[
    //               PopupMenuItem(child: 
    //               Text("الخيارات"),
    //               value: 1,
    //               ),
    //             ] 
    //  );
     },
     ),
              

              
            ],
    ),
     drawer: Drawer( child: ListView(children:const[
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          children: [
            CircleAvatar(
            radius: 28.0,
            backgroundImage:AssetImage("image/1.jpg"),
            ),  
              SizedBox(width: 30.0,),
            Text("حسام نبيل القباطي",
            style: TextStyle(
                 color: Colors.black,
                ),
            ),
          ],
        ),
      ),

      SizedBox(height: 30.0,),

       Padding(
         padding: EdgeInsets.all(20.0),
         child: Column(
           children: [
             ListTile(leading:
              Icon(Icons.home),
              title: Text("الرئيسية"),
             ),
       
             ListTile(leading:
             Icon(Icons.shopping_cart_sharp),
             title: Text(" متجر العابنا "),
             ),
       
             ListTile(leading:
             Icon(Icons.share_sharp),
             title: Text("مشاركة"),
             ),
       
             ListTile(leading: 
             Icon(Icons.phone),
             title: Text("اتصل بنا"),
             ),
           ],
         ),
       ),
       ],
         ),
         ),
         
    body:const MyWidget(),
  )),);
}


class MyWidget extends StatefulWidget {
  const MyWidget({ super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int leftimage=1;
  int rightimage=1;

void changimage(){
      rightimage=Random().nextInt(8)+1;
      leftimage=Random().nextInt(8)+1;
}
  
  @override
  Widget build(BuildContext context) {

    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
         Text(
        leftimage==rightimage?
        "مبروك لقد نجحت":
       "حاول مرة اخرى",
        style:const TextStyle(
          fontSize: 42.0,
          color: Colors.red,
        ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
        Expanded(
          
            child:ElevatedButton(
              onPressed: () {
              setState(() {
                changimage();
              });
              },
              child: Image.asset("images/image-$leftimage.png"),
            ),
                  ),
                Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                         changimage();
                        });
                      },
                      child: Image.asset("images/image-$rightimage.png"),
                    ),
                ),
            ],
          ),
        )
      ],
    );
  }
}



      