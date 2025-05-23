
import 'package:flutter/material.dart';
import 'package:flutter_project/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         primaryColor: Colors.pinkAccent,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        textTheme : TextTheme(
            headlineSmall: TextStyle(fontSize: 21,
                fontWeight: FontWeight.bold)
        ),
      ),
      home: const MyHomePage(title: 'Demo App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int myIndex =0;
  @override
  Widget build(BuildContext context) {

    var arrnames= ['Personal Detail', 'My Gallery', 'My Interest', 'Subscription','Terms & Conditions','Privacy Policy','About Us','Settings'];
    final List<IconData> icons = [Icons.person,
      Icons.browse_gallery,
      Icons.interests,
      Icons.subscriptions,
      Icons.blur_circular,
      Icons.lock,
      Icons.account_balance_outlined,
      Icons.settings,
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      backgroundColor: Colors.pink.shade50,

         drawer: Drawer(
           child: ListView(
             children: [
               Container(
                 height: 100,
                 color: Colors.pink.shade100,
                 child: DrawerHeader(
                   decoration: BoxDecoration(

                   ),
                     child: Column(
                       children: [
                         Row(
                           spacing: 5,
                           children: [
                             Text('Divya Choudhary',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 25),),
                             CircleAvatar(
                               backgroundColor: Colors.white,
                               radius: 20,
                               child: Icon(Icons.person,size: 20,),
                             ),
                           ],
                         ),

                         Container(
                           alignment: Alignment.topLeft,
                             child: Text('divyachoudhary226@gmail.com')),
                       ],
                     )
                 ),
               ),

               ListTile(
                 dense: true,
                 leading: Icon(Icons.home),
                 title: Text('Home'),
               ),

               ListTile(
                 dense: true,
                 leading: Icon(Icons.send),
                 title: Text('Outbox'),
               ),
               ListTile(
                 dense: true,
                 leading: Icon(Icons.settings),
                 title: Text('Settings'),
               ),

               Divider(
                 color: Colors.grey,
                 thickness: 1,
               ),
               ListTile(
                 dense: true,
                 leading: Icon(Icons.home),
                 title: Text('Home'),
               ),

               ListTile(
                 dense: true,
                 leading: Icon(Icons.send),
                 title: Text('Outbox'),
               ),
               ListTile(
                 dense: true,
                 leading: Icon(Icons.settings),
                 title: Text('Settings'),
               ),
             ],
           ),
         ),

       body: Column(
                children:[
                  Center(
                    child: Column(
                      children: [
                        Container(
                          margin:EdgeInsets.only(top: 5),
                          padding: EdgeInsets.only(top: 3 ,right: 3,bottom: 3,left: 0),
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            shape: BoxShape.circle,
                          ),
                            child: CircleAvatar(
                              backgroundImage: AssetImage("assets/images/user1.jpg"),
                              backgroundColor:Colors.white,
                              radius:40,

                            ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),

                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0,right: 8.0,top:4.0,bottom: 4.0),
                              child: Text('78% profile Completed',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                            )),

                        Text('Mark Johnson',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ],)),

                        ListView.builder(
                          itemCount: arrnames.length,
                          shrinkWrap: true, // ✅ FIX
                          physics: NeverScrollableScrollPhysics(),

                          itemBuilder: (context, index) {

                            return ListTile(
                              dense: true,
                              leading: Icon(icons[index],color: Colors.pinkAccent,),
                              title: Text(arrnames[index]),
                              trailing: Icon(Icons.chevron_right),
                            );
                          },
                        ),
                  
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>
                            SecondScreen()),);
                  },

                      style: ElevatedButton.styleFrom(
                        backgroundColor: (Colors.pinkAccent),
                        minimumSize: Size(350,40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),

                      ),
                      ),
                      child:Text('LogOut',style: TextStyle(color: Colors.white),) ),
                      ]
                       ),


      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){

            setState(() {
              myIndex = index;
            });

        },
        currentIndex: myIndex,

          selectedItemColor: Colors.pinkAccent,
          unselectedItemColor: Colors.grey,
          // selectedLabelStyle: TextStyle(
          //   color: Colors.pinkAccent,
          //   fontWeight: FontWeight.bold,
          // ),
          unselectedLabelStyle: TextStyle(
            color: Colors.grey,
          ),
          type: BottomNavigationBarType.fixed,
          // backgroundColor: Colors.white,
          items: const[

         BottomNavigationBarItem(
          icon: Icon(Icons.home),
          // onPressed: (){
          //   Navigator.push(context, MaterialPageRoute(builder: (context)=> second()),)
          // },),
          label: 'Home',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',),

        BottomNavigationBarItem(
          icon: Icon(Icons.leaderboard_outlined),
          label: 'Leaderboard',),

        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'Message',),

        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',),
      ]),
    );
  }
}

