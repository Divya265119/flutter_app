import 'package:flutter/material.dart';
import 'third.dart';

  class SecondScreen extends StatelessWidget{
   final TextEditingController _name =  TextEditingController();
  final TextEditingController _email = TextEditingController();
     final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context)=> Scaffold(
     backgroundColor: Colors.pink.shade50,
     appBar: AppBar(
       title: Text('SECOND SCREEN'),
       backgroundColor: Colors.pink.shade100,
       centerTitle: true,
     ),
     body: Center(
       child:Column(

         children: [

           Padding(
             padding: const EdgeInsets.only(top: 10,bottom: 5),
             child: Text('You have been Logout',style: TextStyle(fontSize: 20),),
           ),

     Padding(
       padding: const EdgeInsets.all(8.0),
       child: TextField(
         controller: _name,
         decoration: InputDecoration(
           border: OutlineInputBorder(),
           labelText: 'Enter Name',
         ),
       ),
     ),

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
               controller: _email,
               decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: 'Enter Email',
               ),
             ),
           ),

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
               obscureText: true,
               obscuringCharacter: '*',
               controller: _password,
               decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: 'Enter Password',
               ),
             ),
           ),

           ElevatedButton(onPressed: (){
           Navigator.of(context).push(
               MaterialPageRoute(
                   builder: (context) =>
                       ThirdScreen(
               name: _name.text,
               email: _email.text,
               password : _password.text
           ),)
           );
           },
             style: ElevatedButton.styleFrom(
               backgroundColor: Colors.pinkAccent,
               foregroundColor: Colors.white,
               minimumSize: Size(300,40),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10),
               ),
             ),
             child: Text('Submit & Next'),),
     ],
     ),)
   );
}
