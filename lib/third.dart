import 'package:flutter/material.dart';

class   ThirdScreen extends StatelessWidget{
   final String name ;
   final String email;
   final String password;



ThirdScreen({required this.name,required this.email,required this.password});

@override
Widget build(BuildContext context)=> Scaffold(
    backgroundColor: Colors.pink.shade50,
    appBar: AppBar(
      title: Text('THIRD SCREEN'),
      backgroundColor: Colors.pink.shade100,
      centerTitle: true,
    ),
    body: Center(
      child:Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Column(

          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.pinkAccent,
                ),

                Positioned(
                  top: 25,
                  left: 25,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.pink.shade50,
                    child:Center(child: Text ('Divya',style: TextStyle(fontSize: 25),)),
                  ),
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text('Name : ${name}'),
            ),
            Text('Email : ${email}'),
            Text('Password : ${password}'),
            // Padding(
            //   padding: const EdgeInsets.only(top: 250,bottom: 5),
            //   child: Text('You have been Logout',style: TextStyle(fontSize: 20),),
            // ),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                foregroundColor: Colors.white,
                minimumSize: Size(200,40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text('Go Back'),),


            Container(
              margin: EdgeInsets.only(top: 8),
              child: ElevatedButton(onPressed: (){
               showDialog(context: context,
                   builder: (context){
                 return AlertDialog(
                   title: Text('The box was clicked'),
                   actions: [
                     TextButton(
                         child: const Text('Okay'),
                         onPressed: () => Navigator.of(context).pop(false),)
                   ],
                 );
                   });
              },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  foregroundColor: Colors.white,
                  minimumSize: Size(200,40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Alert Button'),),
            ),
          ],
        ),
      ),)
);
}