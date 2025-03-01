  import 'package:flutter/material.dart';
  import 'package:maheer_khan/home_screen.dart';


  void main()
  {
    runApp(MyApp());
  }
  class MyApp extends StatefulWidget {
    const MyApp({super.key});

    @override
    State<MyApp> createState() => _MyAppState();
  }

  class _MyAppState extends State<MyApp> {
    @override
    Widget build(BuildContext context) {
      return SafeArea(
        child: MaterialApp(
          home:  HomeScreen(),
      ),);
    }
  }

// import 'package:maheer_khan/log_in.dart';
//
// void main()
// {
//   runApp(MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       initialRoute: HomeScreen.id,
//       routes: {
//         HomeScreen.id: (context)=>HomeScreen(),
//         LogIn.id:(context)=>LogIn(),
//       },
//     );
//   }
// }
//
//
//
//
//
// //  import 'package:maheer_khan/screen_two.dart';
// // import 'package:maheer_khan/screen_three.dart';
// //
// // void main()
// // {
// //   runApp(MyApp());
// //
// // }
// // class MyApp extends StatefulWidget {
// //   const MyApp({super.key});
// //
// //   @override
// //   State<MyApp> createState() => _MyAppState();
// // }
// //
// // class _MyAppState extends State<MyApp> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       initialRoute: HomeScreen.id,
// //       routes: {
// //         HomeScreen.id: (context)=>HomeScreen(),
// //         ScreenTwo.id: (context)=>ScreenTwo(),
// //         ScreenThree.id:(context)=>ScreenThree(),
// //       },
// //     );
// //   }
// // }
//
// // void main()
// // {
// //   runApp(MyApp());
// // }
// // class MyApp extends StatefulWidget {
// //   const MyApp({super.key});
// //
// //   @override
// //   State<MyApp> createState() => _MyAppState();
// // }
// //
// // class _MyAppState extends State<MyApp> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //      initialRoute: HomeScreen.id,
// //       routes: {
// //        HomeScreen.id: (context)=>HomeScreen(),
// //         ScreenTwo.id: (context)=>ScreenTwo(),
// //         ScreenThree.id:(context)=>ScreenThree(),
// //       },
// //     );
// //   }
// // }
//
//
// // void main()
// // {
// //   runApp(MyApp());
// // }
// //
// // class MyApp extends StatefulWidget {
// //   const MyApp({super.key});
// //
// //   @override
// //   State<MyApp> createState() => _MyAppState();
// // }
// //
// // class _MyAppState extends State<MyApp> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //      initialRoute: HomeScreen.id,
// //       routes: {
// //        HomeScreen.id: (context)=>HomeScreen(),
// //         ScreenTwo.id: (context)=>ScreenTwo(),
// //         ScreenThree.id:(context)=>ScreenThree(),
// //       },
// //     );
// //   }
// // }
//
// // void main()
// // {
// //  runApp(MyApp());
// // }
// // class MyApp extends StatefulWidget {
// //   const MyApp({super.key});
// //
// //   @override
// //   State<MyApp> createState() => _MyAppState();
// // }
// //
// // class _MyAppState extends State<MyApp> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //      initialRoute: HomeScreen.id,
// //      routes: {
// //       HomeScreen.id : (context)=> HomeScreen(),
// //       ScreenTwo.id: (context)=>ScreenTwo(),
// //       ScreenThree.id: (context)=>ScreenThree(),
// //      },
// //     );
// //   }
// // }
//
//
//
// // void main()
// // {
// //   runApp(MyApp());
// // }
// // class MyApp extends StatefulWidget {
// //   const MyApp({super.key});
// //
// //   @override
// //   State<MyApp> createState() => _MyAppState();
// // }
// //
// // class _MyAppState extends State<MyApp> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       initialRoute: HomeScreen.id,
// //       routes: {
// //         HomeScreen.id : (context)=>HomeScreen(),
// //         ScreenTwo.id : (context)=>ScreenTwo(),
// //         ScreenThree.id : (context)=>ScreenThree(),
// //       },
// //     );
// //   }
// // }
//
//
// // class MyApp extends StatefulWidget {
// //   const MyApp({super.key});
// //
// //   @override
// //   State<MyApp> createState() => _MyAppState();
// // }
// //
// // class _MyAppState extends State<MyApp> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: HomeScreen(),
// //       //   backgroundColor: Colors.cyanAccent,
// //       //   appBar:AppBar(
// //       //     backgroundColor: Colors.white,
// //       //     title: Text("MaanTechApp"),
// //       //   ),
// //       // ),
// //     );
// //   }
// // }
// //
// //
// // // void main()
// // // {
// // //   runApp(MyApp());
// // // }
// // // class MyApp extends StatefulWidget {
// // //   const MyApp({super.key});
// // //
// // //   @override
// // //   State<MyApp> createState() => _MyAppState();
// // // }
// // //
// // // class _MyAppState extends State<MyApp> {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       title:  "hello",
// // //       theme: ThemeData(
// // // primarySwatch: Colors.teal,
// // //       ),
// // //       home: HomeScreen(),
// // //     );
// // //   }
// // // }
// //
// // // void main() {
// // //   runApp(MyApp());
// // // }
// // //
// // // class MyApp extends StatefulWidget {
// // //   const MyApp({super.key});
// // //
// // //   @override
// // //   State<MyApp> createState() => _MyAppState();
// // // }
// // //
// // // class _MyAppState extends State<MyApp> {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       home: Scaffold(
// // //         backgroundColor: Colors.cyanAccent,
// // //         appBar: AppBar(
// // //           backgroundColor: Colors.grey,
// // //           title: Text(
// // //             "Chat-App",
// // //             style: TextStyle(
// // //               color: Colors.white,
// // //               fontSize: 29,
// // //               fontWeight: FontWeight.w800,
// // //             ),
// // //           ),
// // //         ),
// // //         body: Column(
// // //           children: [
// // //             Expanded(
// // //
// // //               child: ListView.builder(
// // //                 itemCount: 19,
// // //                 itemBuilder: (context, index) {
// // //                   return ListTile(
// // //                     leading: CircleAvatar(
// // //                       backgroundColor: Colors.grey,
// // //                       radius: 23,
// // //                       child: Icon(Icons.account_circle_rounded),
// // //                     ),
// // //                     title: Text(
// // //                       "Maan",
// // //                       style: TextStyle(
// // //                         color: Colors.black,
// // //                         fontWeight: FontWeight.bold,
// // //                       ),
// // //                     ),
// // //                     subtitle: Text("Tech pvt ltd Company"),
// // //                     trailing: Text("9:00 pm"),
// // //                   );
// // //                 },
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// //
// //
// // // class MyApp extends StatefulWidget {
// // //   const MyApp({super.key});
// // //
// // //   @override
// // //   State<MyApp> createState() => _MyAppState();
// // // }
// // //
// // // class _MyAppState extends State<MyApp> {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       home: Scaffold(
// // //         backgroundColor: Colors.yellowAccent,
// // //         appBar: AppBar(
// // //           backgroundColor: Colors.yellow,
// // //           title: Text("MaanTechWorld"),
// // //         ),
// // //         body: Column(
// // //           children: [
// // //             Expanded(
// // //                 child: ListView.builder(
// // //                   itemCount: 35,
// // //                   itemBuilder: (context, index)
// // //                   {
// // //                     return ListTile(
// // //                       title: Text( "Maan"),
// // //                       subtitle: Text("Tech-company"),
// // //                       trailing: Text("3:00 am"),
// // //                       leading: CircleAvatar(
// // //                         backgroundColor: Colors.white,
// // //                         radius: 22,
// // //                         child: Icon(Icons.account_circle_sharp, size: 29),
// // //                       ),
// // //                     );
// // //                   },
// // //                 ), ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // //
// // //
// // //
// // // // class MyApp extends StatefulWidget {
// // // //   const MyApp({super.key});
// // // //
// // // //   @override
// // // //   State<MyApp> createState() => _MyAppState();
// // // // }
// // // //
// // // // class _MyAppState extends State<MyApp> {
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return MaterialApp(
// // // //       home: Scaffold(
// // // //         backgroundColor: Colors.yellowAccent,
// // // //         appBar: AppBar(
// // // //           title: Text('Chat-App',
// // // //           style: TextStyle(
// // // //             color: Colors.indigoAccent,
// // // //             fontWeight: FontWeight.w800,
// // // //             fontSize: 25,
// // // //
// // // //           ),),
// // // //         ),
// // // //         body: Column(
// // // //           children: [
// // // //             Expanded(child:
// // // //             ListTile(
// // // //               title: Text('Maan'),
// // // //               subtitle: Text('tech-Company pvt Ltd'),
// // // //               trailing: Text("11:00 pm"),
// // // //               leading: CircleAvatar(
// // // //                 backgroundColor: Colors.white,
// // // //                 radius: 33,
// // // //                 child: Icon(Icons.person, size: 29,),
// // // //               ),
// // // //             ),
// // // //             ),],
// // // //         ),
// // // //
// // // //       ),
// // // //     );
// // // //   }
// // // // }
// // //
// // // // class MyApp extends StatefulWidget {
// // // //   const MyApp({super.key});
// // // //
// // // //   @override
// // // //   State<MyApp> createState() => _MyAppState();
// // // // }
// // // //
// // // // class _MyAppState extends State<MyApp> {
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return MaterialApp(
// // // //       home: Scaffold(
// // // //         backgroundColor: Colors.white,
// // // //         appBar: AppBar(
// // // //           backgroundColor: Colors.green,
// // // //           title: Text("MaanTechApp",
// // // //           style: TextStyle(
// // // //             color: Colors.black,
// // // //             fontSize: 25,
// // // //             fontWeight: FontWeight.bold,
// // // //           ),),
// // // //         ),
// // // //
// // // //         body: Center(
// // // //           child: Column(
// // // //             mainAxisAlignment: MainAxisAlignment.center,
// // // //             children: [
// // // //               Center(
// // // //                 child: TextFormField(
// // // //
// // // //                  decoration: InputDecoration(
// // // //                    labelText: "email",
// // // //                    labelStyle: TextStyle(
// // // //                      color: Colors.indigo,
// // // //
// // // //                    ),
// // // //                    hintText: 'E-mail',
// // // //                    hintStyle: TextStyle(
// // // //                      color: Colors.grey,
// // // //
// // // //                    ),
// // // //                    fillColor: Colors.cyanAccent,
// // // //                    filled: true,
// // // //                    focusedBorder: OutlineInputBorder(
// // // //                      borderSide: BorderSide(
// // // //                        color: Colors.black,
// // // //                        width: 2,
// // // //
// // // //                      ),
// // // //                      borderRadius: BorderRadius.circular(10),
// // // //                    ),
// // // //                  ),
// // // //
// // // //                 ),
// // // //               )
// // // //             ],
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }
// // // //
// // // // //
// // // // // void main()
// // // // // {
// // // // //   runApp(MyApp());
// // // // // }
// // // // // class MyApp extends StatefulWidget {
// // // // //   const MyApp({super.key});
// // // // //
// // // // //   @override
// // // // //   State<MyApp> createState() => _MyAppState();
// // // // // }
// // // // //
// // // // // class _MyAppState extends State<MyApp> {
// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return MaterialApp(
// // // // //       home: Scaffold(
// // // // //         backgroundColor: Colors.grey,
// // // // //         appBar: AppBar(
// // // // //           backgroundColor: Colors.green,
// // // // //           title: Text("Hello-Pak",
// // // // //           style: TextStyle(
// // // // //             color: Colors.black,
// // // // //             fontSize: 26,
// // // // //             fontWeight: FontWeight.bold,
// // // // //           ),),
// // // // //         ),
// // // // //         body: Center(
// // // // //           child: Column(
// // // // //             children: [
// // // // //               Center(
// // // // //                 child: TextFormField(
// // // // //                   decoration: InputDecoration(
// // // // //                     prefixIcon: Icon(Icons.mail_outline_sharp, color: Colors.white,),
// // // // //                     hintText: "E-mail",
// // // // //                     hintStyle: TextStyle(
// // // // //                       color: Colors.white,
// // // // //                       fontSize: 9,
// // // // //
// // // // //                     ),
// // // // //                     focusedBorder: OutlineInputBorder(
// // // // //                       borderSide: BorderSide(
// // // // //                         color: Colors.black45,
// // // // //                         width: 5,
// // // // //                       ),
// // // // //                       borderRadius: BorderRadius.circular(10),
// // // // //
// // // // //                     ),
// // // // //
// // // // //                     errorBorder:  OutlineInputBorder(
// // // // //                       borderSide: BorderSide(
// // // // //                         color: Colors.red,
// // // // //                         width: 5,
// // // // //
// // // // //                       ),
// // // // //                       borderRadius: BorderRadius.circular(10),
// // // // //                   ),
// // // // //
// // // // //                 ),
// // // // //               ),
// // // // //
// // // // //               Center(
// // // // //                 child: TextFormField(
// // // // //                   decoration: InputDecoration(
// // // // //                     prefixIcon: Icon(Icons.password, color: Colors.white,),
// // // // //                     suffixIcon: Icon(Icons.visibility_off),
// // // // //                     hintText: "Password",
// // // // //                     hintStyle: TextStyle(
// // // // //                       color: Colors.white,
// // // // //                       fontSize: 9,
// // // // //
// // // // //                     ),
// // // // // fillColor: Colors.brown,
// // // // //                     filled: true,
// // // // //                     focusedBorder: OutlineInputBorder(
// // // // //                       borderSide: BorderSide(
// // // // //                         color: Colors.black,
// // // // //                         width: 4,
// // // // //                       ),
// // // // //                       borderRadius: BorderRadius.circular(10),
// // // // //                     ),
// // // // //                     errorBorder:  OutlineInputBorder(
// // // // //                       borderSide: BorderSide(
// // // // //                         color: Colors.red,
// // // // //                         width: 5,
// // // // //                       ),
// // // // //                       borderRadius: BorderRadius.circular(10),
// // // // //                   ),
// // // // //
// // // // //                 ),
// // // // //               ),
// // // // //             ],
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }
// // // // //
// // // // // // class MyApp extends StatefulWidget {
// // // // // //   const MyApp({super.key});
// // // // // //
// // // // // //   @override
// // // // // //   State<MyApp> createState() => _MyAppState();
// // // // // // }
// // // // // //
// // // // // // class _MyAppState extends State<MyApp> {
// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //    /  return MaterialApp(
// // // // //       home: Scaffold(
// // // // //         backgroundColor: Colors.white,
// // // // //         appBar: AppBar(
// // // // //           backgroundColor: Colors.yellowAccent,
// // // // //           title: Text("MaanTechWebWide"),
// // // // //         ),
// // // // //         body: Center(
// // // // //           child: Column(
// // // // //
// // // // //             children: [
// // // // //               Center(
// // // // //                 child: CircleAvatar(
// // // // //                   backgroundColor: Colors.grey,
// // // // //                   radius: 39,
// // // // //                   backgroundImage: AssetImage('assets/white.jpg', ),
// // // // //                   child: Icon(Icons.account_circle_sharp),
// // // // //
// // // // //                 ),
// // // // //               ),
// // // // //               Center(
// // // // //                 child: Divider(
// // // // //                   color: Colors.white,
// // // // // height: 29,
// // // // //                   thickness: 19,
// // // // //                 ),
// // // // //               ),
// // // // //               Center(
// // // // //                 child: RichText(
// // // // //                     text: TextSpan(
// // // // //                       text: "Hello ", style: TextStyle(color: Colors.cyanAccent),
// // // // //                   children: [
// // // // //                       TextSpan(text: "world",
// // // // //                       style: TextStyle(color: Colors.black, fontSize: 66),
// // // // //                       ),
// // // // //                     ],
// // // // //                     ),
// // // // //
// // // // //                 ),
// // // // //
// // // // //               ),
// // // // //               Center(
// // // // //                 child: TextFormField(
// // // // //                   decoration: InputDecoration(
// // // // //                     labelText: '  E-mail',
// // // // //                     hintText: 'e-mail',
// // // // //                     hintStyle: TextStyle(
// // // // //                       color: Colors.green, fontSize: 17,
// // // // //                     ),
// // // // //
// // // // //                   ),
// // // // //                 ),
// // // // //               ),
// // // // //               Center(
// // // // //                 child: TextFormField(
// // // // //                   decoration: InputDecoration(
// // // // //                     labelText: '  Password',
// // // // //                     labelStyle: TextStyle( color: Colors.black,
// // // // //                     fontSize: 12),
// // // // //                     hintText: "password",
// // // // //                     hintStyle: TextStyle(
// // // // //                       color:Colors.yellowAccent,
// // // // //                       fontSize: 12,
// // // // //                     )
// // // // //                   ),
// // // // //                 ),
// // // // //               )
// // // // //             ],
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }
// // // // //
// // // // // //
// // // // // // void main() {
// // // // // //   runApp(MyApp());
// // // // // // }
// // // // // //
// // // // // // class MyApp extends StatefulWidget {
// // // // // //   const MyApp({super.key});
// // // // // //
// // // // // //   @override
// // // // // //   State<MyApp> createState() => _MyAppState();
// // // // // // }
// // // // // //
// // // // // // class _MyAppState extends State<MyApp> {
// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return MaterialApp(
// // // // // //       home: Scaffold(
// // // // // //         backgroundColor: Colors.cyanAccent,
// // // // // //         appBar: AppBar(
// // // // // //           backgroundColor: Colors.deepOrange,
// // // // // //           title: Text('maanTechWeb', style: TextStyle(
// // // // // //             color: Colors.green, fontWeight: FontWeight.bold,
// // // // // //             fontSize: 18,
// // // // // //           ),),
// // // // // //         ),
// // // // // //         body: Center(
// // // // // //           child: Column(
// // // // // //             mainAxisAlignment: MainAxisAlignment.center,
// // // // // //             children: [
// // // // // //               Center(
// // // // // //                 child: RichText(
// // // // // //                   text: TextSpan(
// // // // // //                     text: "Maan",
// // // // // //                     style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 50),
// // // // // //                     children: <TextSpan>[
// // // // // //                       TextSpan(
// // // // // //                         text: ' Tech',
// // // // // //                         style: TextStyle(fontWeight: FontWeight.bold, color: Colors.yellowAccent),
// // // // // //                       ),
// // // // // //                     ],
// // // // // //                   ),
// // // // // //                 ),
// // // // // //               ),
// // // // // //               SizedBox(
// // // // // //                 child: Divider(
// // // // // //                   height: 22,
// // // // // //                   thickness: 2,
// // // // // //                   color: Colors.black87,
// // // // // //                 ),
// // // // // //               ),
// // // // // //               Center(
// // // // // //                 child: CircleAvatar(
// // // // // //                   backgroundColor: Colors.white,
// // // // // //                   radius: 44,
// // // // // //                   child: Icon(Icons.person, size: 50,),
// // // // // //                 ),
// // // // // //               )
// // // // // //             ],
// // // // // //           ),
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }
// // // // // // //
// // // // // // // class MyApp extends StatefulWidget {
// // // // // // //   const MyApp({super.key});
// // // // // // //
// // // // // // //   @override
// // // // // // //   State<MyApp> createState() => _MyAppState();
// // // // // // // }
// // // // // // //
// // // // // // // class _MyAppState extends State<MyApp> {
// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return MaterialApp(
// // // // // // //       home: Scaffold(
// // // // // // //         backgroundColor: Colors.yellow,
// // // // // // //         appBar: AppBar(
// // // // // // //           backgroundColor: Colors.white,
// // // // // // //           title: Text(
// // // // // // //             "MaanTechWeb",
// // // // // // //             style: TextStyle(
// // // // // // //               color: Colors.green,
// // // // // // //               fontWeight: FontWeight.w800,
// // // // // // //               fontSize: 28,
// // // // // // //             ),
// // // // // // //           ),
// // // // // // //         ),
// // // // // // //         body: Column(
// // // // // // //           children: [
// // // // // // //             Center(
// // // // // // //               child:Divider(
// // // // // // //                 color: Colors.red,
// // // // // // //                 height: 22,
// // // // // // //                 ),
// // // // // // //
// // // // // // //             ),
// // // // // // //             Center(
// // // // // // //               child: RichText(
// // // // // // //                   text: TextSpan(
// // // // // // //                     text: 'Hello world',
// // // // // // //                       style: Theme.of(context).textTheme.body.copyWith(color: Colors.green, fontSize: 21, fontWeight: FontWeight.bold
// // // // // // //                       )
// // // // // // //                   ),),
// // // // // // //             )
// // // // // // //           ],a
// // // // // // //         ),
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }
// // // // // // //
// // // // // // //
// // // // // // // //
// // // // // // // // void main()
// // // // // // // // {
// // // // // // // //   runApp(MyApp());
// // // // // // // // }
// // // // // // // // class MyApp extends StatefulWidget {
// // // // // // // //   const MyApp({super.key});
// // // // // // // //
// // // // // // // //   @override
// // // // // // // //   State<MyApp> createState() => _MyAppState();
// // // // // // // // }
// // // // // // // //
// // // // // // // // class _MyAppState extends State<MyApp> {
// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     return MaterialApp(
// // // // // // // //       home: Scaffold(
// // // // // // // //         backgroundColor: Colors.cyanAccent,
// // // // // // // //         appBar: AppBar(
// // // // // // // //
// // // // // // // //           backgroundColor: Colors.yellow,
// // // // // // // //           title: Text("MaanTechWeb", style: TextStyle(color: Colors.indigoAccent,
// // // // // // // //           fontSize: 25,
// // // // // // // //           fontWeight: FontWeight.w800),),
// // // // // // // //         ),
// // // // // // // //         body: Center(
// // // // // // // //           child: CircleAvatar(
// // // // // // // //             backgroundColor: Colors.green,
// // // // // // // //             radius: 75,
// // // // // // // //             backgroundImage: AssetImage('assets/dp1.jpg'),
// // // // // // // //             // child: Icon(Icons.person, size: 100,),
// // // // // // // //           ),
// // // // // // // //         ),
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }
// // // // // // // //
// // // // // // // //
// // // // // // // //
// // // // // // // // //
// // // // // // // // //
// // // // // // // // // void main()
// // // // // // // // // {
// // // // // // // // //   runApp(MyApp());
// // // // // // // // // }
// // // // // // // // // class MyApp extends StatefulWidget {
// // // // // // // // //   const MyApp({super.key});
// // // // // // // // //
// // // // // // // // //   @override
// // // // // // // // //   State<MyApp> createState() => _MyAppState();
// // // // // // // // // }
// // // // // // // // //
// // // // // // // // //
// // // // // // // // // class _MyAppState extends State<MyApp> {
// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return MaterialApp(
// // // // // // // // //       home: Scaffold(
// // // // // // // // //         backgroundColor: Colors.yellowAccent,
// // // // // // // // //         appBar: AppBar(
// // // // // // // // //           backgroundColor: Colors.deepOrange,
// // // // // // // // //           title: Text('MaanTechWebWide', style:
// // // // // // // // //             TextStyle(
// // // // // // // // //               color: Colors.green,
// // // // // // // // //               fontWeight: FontWeight.w800,
// // // // // // // // //               fontSize: 27,
// // // // // // // // //             ),),
// // // // // // // // //         ),
// // // // // // // // //         body: Column(
// // // // // // // // //           children: [
// // // // // // // // //             Stack(
// // // // // // // // //         children: [
// // // // // // // // //            Center(
// // // // // // // // //             child: Container(
// // // // // // // // //               width: 200,
// // // // // // // // //               height: 200,
// // // // // // // // //               color: Colors.green,
// // // // // // // // //
// // // // // // // // //             ),
// // // // // // // // //           ),
// // // // // // // // //            Center(
// // // // // // // // //             child: Container(
// // // // // // // // //               width: 150,
// // // // // // // // //               height: 150,
// // // // // // // // //               color: Colors.red,
// // // // // // // // //
// // // // // // // // //             ),
// // // // // // // // //           ),
// // // // // // // // //            Center(
// // // // // // // // //               child: Container(
// // // // // // // // //                 width: 100,
// // // // // // // // //                 height: 100,
// // // // // // // // //                 color: Colors.white,
// // // // // // // // //
// // // // // // // // //
// // // // // // // // //               ),
// // // // // // // // //             ),
// // // // // // // // //
// // // // // // // // // Center(
// // // // // // // // //   child: Text("Hello"),
// // // // // // // // // ),
// // // // // // // // //           ],
// // // // // // // // //
// // // // // // // // //         ),
// // // // // // // // //
// // // // // // // // //     ],),),
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }
// // // // // // // // //
// // // // // // // // // // void main()
// // // // // // // // // // {
// // // // // // // // // //   runApp(MyApp());
// // // // // // // // // // }
// // // // // // // // // // class MyApp extends StatefulWidget {
// // // // // // // // // //   const MyApp({super.key});
// // // // // // // // // //
// // // // // // // // // //   @override
// // // // // // // // // //   State<MyApp> createState() => _MyAppState();
// // // // // // // // // // }
// // // // // // // // // //
// // // // // // // // // // class _MyAppState extends State<MyApp> {
// // // // // // // // // //   @override
// // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // //     return MaterialApp(
// // // // // // // // // //       home: Scaffold(
// // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // //         appBar: AppBar(
// // // // // // // // // //           backgroundColor: Colors.cyanAccent,
// // // // // // // // // //           title: Text("MaanTechWebWide", style: TextStyle(
// // // // // // // // // //             color: Colors.black,
// // // // // // // // // //             fontSize: 33,
// // // // // // // // // //             fontWeight: FontWeight.bold,
// // // // // // // // // //           ),),
// // // // // // // // // //         ),
// // // // // // // // // //         body: Column(
// // // // // // // // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // //           children: [
// // // // // // // // // //             Center(
// // // // // // // // // //               child: Row(
// // // // // // // // // //                 // mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // //                 // crossAxisAlignment: CrossAxisAlignment.center,
// // // // // // // // // //                 children: [
// // // // // // // // // //
// // // // // // // // // //                   Expanded(
// // // // // // // // // //                     flex:3,
// // // // // // // // // //
// // // // // // // // // //                     child:
// // // // // // // // // //               Center(
// // // // // // // // // //                     child: Container(
// // // // // // // // // //
// // // // // // // // // //                       height: 222,
// // // // // // // // // //
// // // // // // // // // //                         decoration: BoxDecoration(
// // // // // // // // // //                           color: Colors.deepOrange,
// // // // // // // // // //                           borderRadius: BorderRadius.circular(13),
// // // // // // // // // //
// // // // // // // // // //                         ),
// // // // // // // // // //                       child: Center(
// // // // // // // // // //                         child: Text("maan-1", style: TextStyle(
// // // // // // // // // //                           color: Colors.black87, fontWeight: FontWeight.bold,
// // // // // // // // // //                         ),),
// // // // // // // // // //                       ),
// // // // // // // // // //                     ),
// // // // // // // // // //                   ),
// // // // // // // // // //                   ),
// // // // // // // // // //
// // // // // // // // // //                   Expanded(
// // // // // // // // // //                     flex: 2,
// // // // // // // // // //                     child:
// // // // // // // // // //
// // // // // // // // // //                   Center(
// // // // // // // // // //
// // // // // // // // // //                     child: Container(
// // // // // // // // // //
// // // // // // // // // //                       height: 222,
// // // // // // // // // //
// // // // // // // // // //                       decoration: BoxDecoration(
// // // // // // // // // //                         color: Colors.green,
// // // // // // // // // //                         borderRadius: BorderRadius.circular(13),
// // // // // // // // // //
// // // // // // // // // //                       ),
// // // // // // // // // //                       child: Center(
// // // // // // // // // //                         child: Text("maan-2", style: TextStyle(
// // // // // // // // // //                           color: Colors.black87, fontWeight: FontWeight.bold,
// // // // // // // // // //                         ),),
// // // // // // // // // //                       ),
// // // // // // // // // //                     ),
// // // // // // // // // //                   ),
// // // // // // // // // //                   ),
// // // // // // // // // //                 ],
// // // // // // // // // //               ),
// // // // // // // // // //             ),
// // // // // // // // // //           ],
// // // // // // // // // //         ),
// // // // // // // // // //       ),
// // // // // // // // // //     );
// // // // // // // // // //   }
// // // // // // // // // // }
// // // // // // // // // //
// // // // // // // // // // // void main()
// // // // // // // // // // // {
// // // // // // // // // // //   runApp(MyApp());
// // // // // // // // // // // }
// // // // // // // // // // //
// // // // // // // // // // // class MyApp extends StatefulWidget {
// // // // // // // // // // //   const MyApp({super.key});
// // // // // // // // // // //
// // // // // // // // // // //   @override
// // // // // // // // // // //   State<MyApp> createState() => _MyAppState();
// // // // // // // // // // // }
// // // // // // // // // // //
// // // // // // // // // // // class _MyAppState extends State<MyApp> {
// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     return MaterialApp(
// // // // // // // // // // //       home: Scaffold(
// // // // // // // // // // //         backgroundColor: Colors.cyanAccent,
// // // // // // // // // // //         appBar: AppBar(
// // // // // // // // // // //           backgroundColor: Colors.yellowAccent,
// // // // // // // // // // //           title: Text('MaanTechWeb' , style: TextStyle(
// // // // // // // // // // //             color: Colors.black, fontSize: 33, fontWeight: FontWeight.bold,
// // // // // // // // // // //           ),),
// // // // // // // // // // //         ),
// // // // // // // // // // //
// // // // // // // // // // //         body: Center(
// // // // // // // // // // //           child: Column(
// // // // // // // // // // //
// // // // // // // // // // //             children: [
// // // // // // // // // // //               SizedBox(
// // // // // // // // // // //                 height: 39,
// // // // // // // // // // //               ),
// // // // // // // // // // //               Center(
// // // // // // // // // // //                 child: Text("Sign-in", style: TextStyle(
// // // // // // // // // // //                   color: Colors.deepOrange, fontSize: 24, fontWeight: FontWeight.bold,
// // // // // // // // // // //                 ),),
// // // // // // // // // // //               ),
// // // // // // // // // // //               Center(
// // // // // // // // // // //                 child: Text("Please click to sign in", style: TextStyle(
// // // // // // // // // // //                   color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 15,
// // // // // // // // // // //                 ),),
// // // // // // // // // // //               ),
// // // // // // // // // // //
// // // // // // // // // // //
// // // // // // // // // // //
// // // // // // // // // // // SizedBox(
// // // // // // // // // // //   height: 75,
// // // // // // // // // // // ),
// // // // // // // // // // //               Center(
// // // // // // // // // // //                 child: Container(
// // // // // // // // // // //                   width: 300, height: 50, decoration: BoxDecoration(
// // // // // // // // // // //                   borderRadius: BorderRadius.circular(15),
// // // // // // // // // // //                   color: Colors.white,
// // // // // // // // // // //                   border: Border.all(color: Colors.black, width: 5),
// // // // // // // // // // //                 ),
// // // // // // // // // // //                   child: Center(
// // // // // // // // // // //                     child: Center(
// // // // // // // // // // //                       child: TextFormField(
// // // // // // // // // // //                         decoration: InputDecoration(
// // // // // // // // // // //                           hintText: 'E-mail',
// // // // // // // // // // //                           prefixIcon: Icon(Icons.mail_outline_sharp, color: Colors.grey,),
// // // // // // // // // // //                           fillColor: Colors.grey,
// // // // // // // // // // //                           focusedBorder: OutlineInputBorder(
// // // // // // // // // // //                             borderRadius: BorderRadius.circular(16),
// // // // // // // // // // //                           ),
// // // // // // // // // // //                         ),
// // // // // // // // // // //                       ),
// // // // // // // // // // //                     ),
// // // // // // // // // // //                   ),
// // // // // // // // // // //                 ),
// // // // // // // // // // //               ),
// // // // // // // // // // //               SizedBox(
// // // // // // // // // // //                 height: 25,
// // // // // // // // // // //               ),
// // // // // // // // // // //               Center(
// // // // // // // // // // //                 child: Container(
// // // // // // // // // // //                   width: 300, height: 50, decoration: BoxDecoration(
// // // // // // // // // // //                   borderRadius: BorderRadius.circular(15),
// // // // // // // // // // //                   color: Colors.white,
// // // // // // // // // // //                   border: Border.all(color: Colors.black, width: 5),
// // // // // // // // // // //                 ),
// // // // // // // // // // //                   child: Center(
// // // // // // // // // // //                     child: Center(
// // // // // // // // // // //                       child: TextFormField(
// // // // // // // // // // //                         decoration: InputDecoration(
// // // // // // // // // // //                           hintText: 'Password',
// // // // // // // // // // //                           prefixIcon: Icon(Icons.password_outlined, color: Colors.grey,),
// // // // // // // // // // //                           fillColor: Colors.grey,
// // // // // // // // // // //                           focusedBorder: OutlineInputBorder(
// // // // // // // // // // //                             borderRadius: BorderRadius.circular(16),
// // // // // // // // // // //                           ),
// // // // // // // // // // //                         ),
// // // // // // // // // // //                       ),
// // // // // // // // // // //                     ),
// // // // // // // // // // //                   ),
// // // // // // // // // // //                 ),
// // // // // // // // // // //               ),
// // // // // // // // // // //               SizedBox(
// // // // // // // // // // //                 height: 188,
// // // // // // // // // // //               ),
// // // // // // // // // // //               Center(
// // // // // // // // // // //                 child: Container(
// // // // // // // // // // //                     child: Center(
// // // // // // // // // // //                       child: Text("sign-in", style: TextStyle(
// // // // // // // // // // //                         color: Colors.black, fontWeight: FontWeight.bold,
// // // // // // // // // // //                         fontSize: 19,
// // // // // // // // // // //                       ),),
// // // // // // // // // // //                     ),
// // // // // // // // // // //                   decoration: BoxDecoration(
// // // // // // // // // // //                     color: Colors.deepOrange,
// // // // // // // // // // //                     borderRadius: BorderRadius.circular(12),
// // // // // // // // // // //                   ),
// // // // // // // // // // //                     width: 270, height: 50
// // // // // // // // // // //
// // // // // // // // // // //                 ),
// // // // // // // // // // //
// // // // // // // // // // //               ),
// // // // // // // // // // //
// // // // // // // // // // //
// // // // // // // // // // //
// // // // // // // // // // //
// // // // // // // // // // //
// // // // // // // // // // //               Column(
// // // // // // // // // // //                 children: [
// // // // // // // // // // //                   Center(
// // // // // // // // // // //                     child: Center(
// // // // // // // // // // //                       child: Row(
// // // // // // // // // // //                         mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // //                         crossAxisAlignment: CrossAxisAlignment.center,
// // // // // // // // // // //                         children: [
// // // // // // // // // // //                           Center(
// // // // // // // // // // //                             child: Text("Don't have account? ", style: TextStyle(
// // // // // // // // // // //                               color: Colors.black54, fontSize: 13,
// // // // // // // // // // //                             ),),
// // // // // // // // // // //                           ),
// // // // // // // // // // //                           Center(
// // // // // // // // // // //                             child: Text(" Sign-up ", style: TextStyle(
// // // // // // // // // // //                               color: Colors.deepOrange, fontSize: 12,
// // // // // // // // // // //                             ),),
// // // // // // // // // // //                           ),
// // // // // // // // // // //                         ],
// // // // // // // // // // //                       ),
// // // // // // // // // // //                     ),
// // // // // // // // // // //                   )
// // // // // // // // // // //                 ],
// // // // // // // // // // //               )
// // // // // // // // // // //             ],
// // // // // // // // // // //
// // // // // // // // // // //
// // // // // // // // // // //           ),
// // // // // // // // // // //
// // // // // // // // // // //         ),
// // // // // // // // // // //
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }
// // // // // // // // // // //
// // // // // // // // // // // // void main()
// // // // // // // // // // // // {
// // // // // // // // // // // //   runApp(MyApp());
// // // // // // // // // // // // }
// // // // // // // // // // // // class MyApp extends StatefulWidget {
// // // // // // // // // // // //   const MyApp({super.key});
// // // // // // // // // // // //
// // // // // // // // // // // //   @override
// // // // // // // // // // // //   State<MyApp> createState() => _MyAppState();
// // // // // // // // // // // // }
// // // // // // // // // // // //
// // // // // // // // // // // // class _MyAppState extends State<MyApp> {
// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return MaterialApp(
// // // // // // // // // // // //       home: Scaffold(
// // // // // // // // // // // // backgroundColor: Colors.deepOrange,
// // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // //         title: Text("Ch-Container",style: TextStyle(
// // // // // // // // // // // //           color: Colors.black,  fontWeight: FontWeight.w800, fontSize: 33,
// // // // // // // // // // // //         ),),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //       body: Center(
// // // // // // // // // // // //         child: Column(
// // // // // // // // // // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.center,
// // // // // // // // // // // //           children: [
// // // // // // // // // // // //             Center(
// // // // // // // // // // // //               child: Center(
// // // // // // // // // // // //                 child: Container(
// // // // // // // // // // // //
// // // // // // // // // // // //                   margin: EdgeInsets.only(left: 12, right: 33, top: 55),
// // // // // // // // // // // //                   padding: EdgeInsets.only(left: 22),
// // // // // // // // // // // //
// // // // // // // // // // // //                   decoration: BoxDecoration(
// // // // // // // // // // // //                     color: Colors.white,
// // // // // // // // // // // //                     borderRadius: BorderRadius.circular(12),
// // // // // // // // // // // //                     border: Border.all(color: Colors.black, width: 10),
// // // // // // // // // // // //                     boxShadow: [
// // // // // // // // // // // //                       BoxShadow(color: Colors.black87,
// // // // // // // // // // // //                       blurRadius: 88),
// // // // // // // // // // // //
// // // // // // // // // // // //                     ],
// // // // // // // // // // // // image: DecorationImage(
// // // // // // // // // // // //   fit: BoxFit.cover,
// // // // // // // // // // // //     image: AssetImage("assets/hello.jpg",)),
// // // // // // // // // // // //
// // // // // // // // // // // //                   ),
// // // // // // // // // // // //
// // // // // // // // // // // //                   width: 200, height: 222,
// // // // // // // // // // // //                   child: Center(
// // // // // // // // // // // //                     child: Text("cont-111", style:
// // // // // // // // // // // //                       TextStyle(
// // // // // // // // // // // //                         color: Colors.black54, fontSize: 33,
// // // // // // // // // // // //                         fontWeight: FontWeight.bold,
// // // // // // // // // // // //                         fontFamily: 'Pacifico'
// // // // // // // // // // // //                       ),),
// // // // // // // // // // // //                   // color: Colors.blueAccent,
// // // // // // // // // // // //
// // // // // // // // // // // //                 ),
// // // // // // // // // // // //
// // // // // // // // // // // //               ),
// // // // // // // // // // // //             ),
// // // // // // // // // // // //             ),],
// // // // // // // // // // // //         ),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }
// // // // // // // // // // // //
// // // // // // // // // // // // //
// // // // // // // // // // // // // void main() {
// // // // // // // // // // // // //   runApp(MyApp());
// // // // // // // // // // // // // }
// // // // // // // // // // // // //
// // // // // // // // // // // // // class MyApp extends StatefulWidget {
// // // // // // // // // // // // //   const MyApp({super.key});
// // // // // // // // // // // // //
// // // // // // // // // // // // //   @override
// // // // // // // // // // // // //   State<MyApp> createState() => _MyAppState();
// // // // // // // // // // // // // }
// // // // // // // // // // // // //
// // // // // // // // // // // // // class _MyAppState extends State<MyApp> {
// // // // // // // // // // // // //   @override
// // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // //     return MaterialApp(
// // // // // // // // // // // // //       home: Scaffold(
// // // // // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // // // // //
// // // // // // // // // // // // //         appBar: AppBar(
// // // // // // // // // // // // //
// // // // // // // // // // // // //           title: Text(
// // // // // // // // // // // // //             "MaanTechWeb",
// // // // // // // // // // // // //             style: TextStyle(color: Colors.black, fontSize: 33, fontWeight: FontWeight.w800),
// // // // // // // // // // // // //           ),
// // // // // // // // // // // // //
// // // // // // // // // // // // //         ),
// // // // // // // // // // // // //         body: Center(
// // // // // // // // // // // // //           child: Container(
// // // // // // // // // // // // //             padding: EdgeInsets.only(
// // // // // // // // // // // // //               left: 0,
// // // // // // // // // // // // //               right: 55,
// // // // // // // // // // // // //               top: 55,
// // // // // // // // // // // // //             ),
// // // // // // // // // // // // //             decoration: BoxDecoration(
// // // // // // // // // // // // //               color: Colors.cyanAccent,
// // // // // // // // // // // // //               borderRadius: BorderRadius.only(
// // // // // // // // // // // // //                 topLeft: Radius.circular(18),
// // // // // // // // // // // // //                 topRight: Radius.circular(18),
// // // // // // // // // // // // //                 bottomLeft: Radius.circular(22),
// // // // // // // // // // // // //                 bottomRight: Radius.circular(22),
// // // // // // // // // // // // //               ),
// // // // // // // // // // // // //               border: Border.all(
// // // // // // // // // // // // //                 color: Colors.black,
// // // // // // // // // // // // //                 width: 12,
// // // // // // // // // // // // //               ),
// // // // // // // // // // // // //             ),
// // // // // // // // // // // // //
// // // // // // // // // // // // //             width: 222,
// // // // // // // // // // // // //             height: 222,
// // // // // // // // // // // // //             // color: Colors.yellowAccent,
// // // // // // // // // // // // //             child: Center(
// // // // // // // // // // // // //               child: Text(
// // // // // // // // // // // // //                 "Cont-1",
// // // // // // // // // // // // //                 style: TextStyle(color: Colors.deepOrange, fontSize: 28),
// // // // // // // // // // // // //               ),
// // // // // // // // // // // // //             ),
// // // // // // // // // // // // //           ),
// // // // // // // // // // // // //         ),
// // // // // // // // // // // // //       ),
// // // // // // // // // // // // //     );
// // // // // // // // // // // // //   }
// // // // // // // // // // // // // }
// // // // // // // // // // // // //
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //
// // // // // // // // // // // // // // void main()
// // // // // // // // // // // // // // {
// // // // // // // // // // // // // //   runApp(MyApp());
// // // // // // // // // // // // // // }
// // // // // // // // // // // // // // class MyApp extends StatefulWidget {
// // // // // // // // // // // // // //   const MyApp({super.key});
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // //   State<MyApp> createState() => _MyAppState();
// // // // // // // // // // // // // // }
// // // // // // // // // // // // // // Random random=Random();
// // // // // // // // // // // // // // int x=1;
// // // // // // // // // // // // // // class _MyAppState extends State<MyApp> {
// // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // //     return MaterialApp(
// // // // // // // // // // // // // //       home: Scaffold(
// // // // // // // // // // // // // //         backgroundColor: Colors.pinkAccent,
// // // // // // // // // // // // // //         appBar: AppBar(
// // // // // // // // // // // // // //           backgroundColor: Colors.black,
// // // // // // // // // // // // // //           title: Text("Lottery-App", style: TextStyle(
// // // // // // // // // // // // // //             color: Colors.deepOrange,
// // // // // // // // // // // // // //             fontWeight: FontWeight.w800,
// // // // // // // // // // // // // //             fontSize: 34,
// // // // // // // // // // // // // //           ),),
// // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //         body: Column(
// // // // // // // // // // // // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.center,
// // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // //             Center(
// // // // // // // // // // // // // //               child: Text("Ur num is: $x", style:
// // // // // // // // // // // // // //                 TextStyle(
// // // // // // // // // // // // // //                   backgroundColor: Colors.greenAccent,
// // // // // // // // // // // // // //                   fontSize: 37,
// // // // // // // // // // // // // //                   fontWeight: FontWeight.w800,
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //                 ),),
// // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // //             SizedBox(
// // // // // // // // // // // // // //               height: 19,
// // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // //             Center(
// // // // // // // // // // // // // //               child: Center(
// // // // // // // // // // // // // //                 child: Container(
// // // // // // // // // // // // // //                   width: 222,
// // // // // // // // // // // // // //                     height: 222,
// // // // // // // // // // // // // //                   color: Colors.white,
// // // // // // // // // // // // // //                   child: Column(
// // // // // // // // // // // // // //                     mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // // // // //                     children: [
// // // // // // // // // // // // // //                       x==5? Column(
// // // // // // // // // // // // // //                         children: [
// // // // // // // // // // // // // //                           Icon(Icons.accessibility_sharp, color: Colors.green, size: 33,),
// // // // // // // // // // // // // //                           Center(
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //                             child: Text('Congrats you Won!', style: TextStyle(
// // // // // // // // // // // // // //                               backgroundColor: Colors.green,
// // // // // // // // // // // // // //                               fontSize: 22,
// // // // // // // // // // // // // //                               fontFamily: "Pacifico",
// // // // // // // // // // // // // //                               fontWeight: FontWeight.w800,
// // // // // // // // // // // // // //                             ),),
// // // // // // // // // // // // // //                           ),
// // // // // // // // // // // // // //                         ],
// // // // // // // // // // // // // //                       ):
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //                           Column(
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //                             children: [
// // // // // // // // // // // // // // Icon(Icons.report_gmailerrorred, color: Colors.deepOrange),
// // // // // // // // // // // // // //                               SizedBox(
// // // // // // // // // // // // // //                                 height: 15,
// // // // // // // // // // // // // //                               ),
// // // // // // // // // // // // // //                               Center(
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //                                 child: Text("Sorry ! Please try-Again", style: TextStyle(
// // // // // // // // // // // // // //                                   backgroundColor: Colors.yellowAccent,
// // // // // // // // // // // // // //                                   fontWeight: FontWeight.w800,
// // // // // // // // // // // // // //                                   fontFamily: 'Pacifico',
// // // // // // // // // // // // // //                                   fontSize: 20,
// // // // // // // // // // // // // //                                 ),),
// // // // // // // // // // // // // //                               ),
// // // // // // // // // // // // // //                             ],
// // // // // // // // // // // // // //                           ),
// // // // // // // // // // // // // //                     ],
// // // // // // // // // // // // // //                   ),
// // // // // // // // // // // // // //                 ),
// // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // //         floatingActionButton: FloatingActionButton(
// // // // // // // // // // // // // //             onPressed: ()
// // // // // // // // // // // // // //         {
// // // // // // // // // // // // // //           x=random.nextInt(10);
// // // // // // // // // // // // // //           setState(() {
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //           });
// // // // // // // // // // // // // //         },
// // // // // // // // // // // // // //         child: Icon(Icons.refresh_sharp),
// // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //     );
// // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // }
// // // // // // // // // // // // // //
// // // // // // // // // // // // // // // void main() {
// // // // // // // // // // // // // // //   runApp(MyApp());
// // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // class MyApp extends StatefulWidget {
// // // // // // // // // // // // // // //   const MyApp({super.key});
// // // // // // // // // // // // // // //
// // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // //   State<MyApp> createState() => _MyAppState();
// // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // Random random = Random();
// // // // // // // // // // // // // // // int x = 5;
// // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // class _MyAppState extends State<MyApp> {
// // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // //     return MaterialApp(
// // // // // // // // // // // // // // //       home: Scaffold(
// // // // // // // // // // // // // // //         backgroundColor: Colors.grey,
// // // // // // // // // // // // // // //         appBar: AppBar(
// // // // // // // // // // // // // // //           title: Text(
// // // // // // // // // // // // // // //             " The-Lottery",
// // // // // // // // // // // // // // //             style: TextStyle(
// // // // // // // // // // // // // // //               color: Colors.redAccent,
// // // // // // // // // // // // // // //               backgroundColor: Colors.yellowAccent,
// // // // // // // // // // // // // // //               fontSize: 22,
// // // // // // // // // // // // // // //               fontWeight: FontWeight.bold,
// // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // //           ),
// // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // //         body: Column(
// // // // // // // // // // // // // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // // //             Center(
// // // // // // // // // // // // // // //               child: Text(
// // // // // // // // // // // // // // //                 "Ur num is $x",
// // // // // // // // // // // // // // //                 style: TextStyle(
// // // // // // // // // // // // // // //                   color: Colors.white,
// // // // // // // // // // // // // // //                   fontSize: 25,
// // // // // // // // // // // // // // //                   fontWeight: FontWeight.w800,
// // // // // // // // // // // // // // //                 ),
// // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // //             SizedBox(
// // // // // // // // // // // // // // //               height: 15,
// // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // //             Center(
// // // // // // // // // // // // // // //               child: Center(
// // // // // // // // // // // // // // //                 child: Container(
// // // // // // // // // // // // // // //                   width: 288,
// // // // // // // // // // // // // // //                   height: 200,
// // // // // // // // // // // // // // //                   color: Colors.white,
// // // // // // // // // // // // // // //                   child: Center(
// // // // // // // // // // // // // // //                     child: Column(
// // // // // // // // // // // // // // //                       mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // // // // // //                       crossAxisAlignment: CrossAxisAlignment.center,
// // // // // // // // // // // // // // //                       children: [
// // // // // // // // // // // // // // //                         Center(
// // // // // // // // // // // // // // //                           child: x == 5
// // // // // // // // // // // // // // //                               ? Column(
// // // // // // // // // // // // // // //                                   children: [
// // // // // // // // // // // // // // //                                     Icon(Icons.done_all_outlined,
// // // // // // // // // // // // // // //                                         color: Colors.greenAccent, size: 43),
// // // // // // // // // // // // // // //                                     Center(
// // // // // // // // // // // // // // //                                       child: Text(
// // // // // // // // // // // // // // //                                         "Congrats You Win!",
// // // // // // // // // // // // // // //                                         style: TextStyle(
// // // // // // // // // // // // // // //                                           color: Colors.deepOrange,
// // // // // // // // // // // // // // //                                           fontWeight: FontWeight.bold,
// // // // // // // // // // // // // // //                                           fontSize: 33,
// // // // // // // // // // // // // // //                                         ),
// // // // // // // // // // // // // // //                                       ),
// // // // // // // // // // // // // // //                                     ),
// // // // // // // // // // // // // // //                                   ],
// // // // // // // // // // // // // // //                                 )
// // // // // // // // // // // // // // //                               : Column(
// // // // // // // // // // // // // // //                                   children: [
// // // // // // // // // // // // // // //                                     Icon(
// // // // // // // // // // // // // // //                                       Icons.refresh,
// // // // // // // // // // // // // // //                                       color: Colors.red,
// // // // // // // // // // // // // // //                                     ),
// // // // // // // // // // // // // // //                                     Center(
// // // // // // // // // // // // // // //                                       child: Text(
// // // // // // // // // // // // // // //                                         "Better-Luck \n Try-Again",
// // // // // // // // // // // // // // //                                         style: TextStyle(
// // // // // // // // // // // // // // //                                           color: Colors.lightBlue,
// // // // // // // // // // // // // // //                                           fontWeight: FontWeight.w800,
// // // // // // // // // // // // // // //                                           fontSize: 33,
// // // // // // // // // // // // // // //                                         ),
// // // // // // // // // // // // // // //                                       ),
// // // // // // // // // // // // // // //                                     ),
// // // // // // // // // // // // // // //                                   ],
// // // // // // // // // // // // // // //                                 ),
// // // // // // // // // // // // // // //                         ),
// // // // // // // // // // // // // // //                       ],
// // // // // // // // // // // // // // //                     ),
// // // // // // // // // // // // // // //                   ),
// // // // // // // // // // // // // // //                 ),
// // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // //         floatingActionButton: FloatingActionButton(
// // // // // // // // // // // // // // //           onPressed: () {
// // // // // // // // // // // // // // //             x = random.nextInt(10);
// // // // // // // // // // // // // // //             print(x);
// // // // // // // // // // // // // // //             setState(() {});
// // // // // // // // // // // // // // //           },
// // // // // // // // // // // // // // //           child: Icon(Icons.refresh),
// // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // }
// // // // // // // // // // // // // //
// // // // // // // // // // // // // // //  class MyApp extends StatefulWidget {
// // // // // // // // // // // // // // //    const MyApp({super.key});
// // // // // // // // // // // // // // //
// // // // // // // // // // // // // // //    @override
// // // // // // // // // // // // // // //    State<MyApp> createState() => _MyAppState();
// // // // // // // // // // // // // // //  }
// // // // // // // // // // // // // // //  Random random=Random();
// // // // // // // // // // // // // // //  int x=3;
// // // // // // // // // // // // // // //  class _MyAppState extends State<MyApp> {
// // // // // // // // // // // // // // //    @override
// // // // // // // // // // // // // // //    Widget build(BuildContext context) {
// // // // // // // // // // // // // // //      return MaterialApp(
// // // // // // // // // // // // // // //      home: Scaffold(
// // // // // // // // // // // // // // //        backgroundColor: Colors.cyanAccent,
// // // // // // // // // // // // // // //        appBar: AppBar(
// // // // // // // // // // // // // // //          title: Text("lottery-App"),
// // // // // // // // // // // // // // //
// // // // // // // // // // // // // // //        ),
// // // // // // // // // // // // // // //        body: Column(
// // // // // // // // // // // // // // //          mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // // // // // //          children: [
// // // // // // // // // // // // // // //            Center(
// // // // // // // // // // // // // // //              child: Text("Ur num is: $x",
// // // // // // // // // // // // // // //              style: TextStyle(
// // // // // // // // // // // // // // //                color: Colors.redAccent,
// // // // // // // // // // // // // // //                fontSize: 25,
// // // // // // // // // // // // // // //                fontWeight: FontWeight.w800,
// // // // // // // // // // // // // // //              ),),
// // // // // // // // // // // // // // //            ),
// // // // // // // // // // // // // // //            Center(
// // // // // // // // // // // // // // //              child: Column(
// // // // // // // // // // // // // // //                children: [
// // // // // // // // // // // // // // //                  Center(
// // // // // // // // // // // // // // //                    child: Container(
// // // // // // // // // // // // // // //
// // // // // // // // // // // // // // //                      width: 300,
// // // // // // // // // // // // // // //                      color: Colors.yellowAccent,
// // // // // // // // // // // // // // //                      child:  x==3? Text("U win")
// // // // // // // // // // // // // // //
// // // // // // // // // // // // // // //                          : Column(
// // // // // // // // // // // // // // //                         children: [
// // // // // // // // // // // // // // //                           Icon(Icons.error_outline),
// // // // // // // // // // // // // // //                           Text("Try again")
// // // // // // // // // // // // // // //
// // // // // // // // // // // // // // //                         ],
// // // // // // // // // // // // // // //                      ),
// // // // // // // // // // // // // // //                    ),
// // // // // // // // // // // // // // //                  ),
// // // // // // // // // // // // // // //
// // // // // // // // // // // // // // //                ],
// // // // // // // // // // // // // // //
// // // // // // // // // // // // // // //              ),
// // // // // // // // // // // // // // //            ),
// // // // // // // // // // // // // // //          ],
// // // // // // // // // // // // // // //
// // // // // // // // // // // // // // //        ),
// // // // // // // // // // // // // // //        floatingActionButton: FloatingActionButton(
// // // // // // // // // // // // // // //            onPressed: ()
// // // // // // // // // // // // // // //        {
// // // // // // // // // // // // // // //          x=random.nextInt(7);
// // // // // // // // // // // // // // //          print(x);
// // // // // // // // // // // // // // //          setState(() {
// // // // // // // // // // // // // // //
// // // // // // // // // // // // // // //          });
// // // // // // // // // // // // // // //        },
// // // // // // // // // // // // // // //        child: Icon(Icons.refresh),),
// // // // // // // // // // // // // // //      ),
// // // // // // // // // // // // // // //      );
// // // // // // // // // // // // // // //    }
// // // // // // // // // // // // // // //  }
// // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //  void main()
// // // // // // // // // // // // // // // //  {
// // // // // // // // // // // // // // // //    runApp(MyApp());
// // // // // // // // // // // // // // // //  }
// // // // // // // // // // // // // // // //  class MyApp extends StatefulWidget {
// // // // // // // // // // // // // // // //    const MyApp({super.key});
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //    @override
// // // // // // // // // // // // // // // //    State<MyApp> createState() => _MyAppState();
// // // // // // // // // // // // // // // //  }
// // // // // // // // // // // // // // // //  Random random=Random();
// // // // // // // // // // // // // // // // int x=3;
// // // // // // // // // // // // // // // //  class _MyAppState extends State<MyApp> {
// // // // // // // // // // // // // // // //    @override
// // // // // // // // // // // // // // // //    Widget build(BuildContext context) {
// // // // // // // // // // // // // // // //      return MaterialApp(
// // // // // // // // // // // // // // // //        home: Scaffold(
// // // // // // // // // // // // // // // //          backgroundColor: Colors.yellowAccent,
// // // // // // // // // // // // // // // //          appBar: AppBar(
// // // // // // // // // // // // // // // //            title: Text("Lottery-Game"),
// // // // // // // // // // // // // // // //          ),
// // // // // // // // // // // // // // // //          body: Column(
// // // // // // // // // // // // // // // //            mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // // // // // // //            children: [
// // // // // // // // // // // // // // // //              Center(
// // // // // // // // // // // // // // // //                child: Center(
// // // // // // // // // // // // // // // //              child: Container(
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //                  width: 255,
// // // // // // // // // // // // // // // //                  color: Colors.cyanAccent,
// // // // // // // // // // // // // // // //                  child: Center(
// // // // // // // // // // // // // // // //              child: Column(
// // // // // // // // // // // // // // // //                mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //                children: [
// // // // // // // // // // // // // // // //                  Center(
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //                      child: Text("Ur num is $x"),
// // // // // // // // // // // // // // // //                    ),
// // // // // // // // // // // // // // // //                  Center(
// // // // // // // // // // // // // // // //                    child: x!=random ? Text('Sorry'):Text('U-win'),
// // // // // // // // // // // // // // // //                  ),
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //                ],
// // // // // // // // // // // // // // // //              ),
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //                  ),
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //                ),
// // // // // // // // // // // // // // // //              ),
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //              ),
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //            ],
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //          ),
// // // // // // // // // // // // // // // //          floatingActionButton: FloatingActionButton(
// // // // // // // // // // // // // // // //              onPressed: ()
// // // // // // // // // // // // // // // //          {
// // // // // // // // // // // // // // // //            print(random);
// // // // // // // // // // // // // // // //          },
// // // // // // // // // // // // // // // //          child: Icon(Icons.refresh),
// // // // // // // // // // // // // // // //          ),
// // // // // // // // // // // // // // // //        ),
// // // // // // // // // // // // // // // //      );
// // // // // // // // // // // // // // // //    }
// // // // // // // // // // // // // // // //  }
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //  //x==random ? Text("U-win") : Text('Sorry'),
// // // // // // // // // // // // // // // //  //Text("Sorry Ur num is $x \n Try-again"),
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //  void main() {
// // // // // // // // // // // // // // // // //    runApp(MyApp());
// // // // // // // // // // // // // // // // //  }
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //  class MyApp extends StatefulWidget {
// // // // // // // // // // // // // // // // //    const MyApp({super.key});
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //    @override
// // // // // // // // // // // // // // // // //    State<MyApp> createState() => _MyAppState();
// // // // // // // // // // // // // // // // //  }
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //  class _MyAppState extends State<MyApp> {
// // // // // // // // // // // // // // // // //    Random random = Random();  // Initialize random properly
// // // // // // // // // // // // // // // // //    int x = 6; // Default value
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //    @override
// // // // // // // // // // // // // // // // //    Widget build(BuildContext context) {
// // // // // // // // // // // // // // // // //      return MaterialApp(
// // // // // // // // // // // // // // // // //        home: Scaffold(
// // // // // // // // // // // // // // // // //          backgroundColor: Colors.tealAccent,
// // // // // // // // // // // // // // // // //          appBar: AppBar(
// // // // // // // // // // // // // // // // //            backgroundColor: Colors.yellowAccent,
// // // // // // // // // // // // // // // // //            title: const Text("MaanTechWeb"),
// // // // // // // // // // // // // // // // //          ),
// // // // // // // // // // // // // // // // //          body: Center(
// // // // // // // // // // // // // // // // //            child: Column(
// // // // // // // // // // // // // // // // //              mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // // // // // // // //              children: [
// // // // // // // // // // // // // // // // //                Container(
// // // // // // // // // // // // // // // // //                  height: 250,
// // // // // // // // // // // // // // // // //                  width: 300,
// // // // // // // // // // // // // // // // //                  color: Colors.red,
// // // // // // // // // // // // // // // // //                  alignment: Alignment.center,
// // // // // // // // // // // // // // // // //                  child: Column(
// // // // // // // // // // // // // // // // //                    mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // // // // // // // //                    children: [
// // // // // // // // // // // // // // // // //                      const Icon(
// // // // // // // // // // // // // // // // //                        Icons.error,
// // // // // // // // // // // // // // // // //                        size: 50,
// // // // // // // // // // // // // // // // //                        color: Colors.white,
// // // // // // // // // // // // // // // // //                      ),
// // // // // // // // // // // // // // // // //                      const SizedBox(height: 10),
// // // // // // // // // // // // // // // // //                      Text(
// // // // // // // // // // // // // // // // //                        "Sorry, Your number is $x\nPlease Try Again",
// // // // // // // // // // // // // // // // //                        textAlign: TextAlign.center,
// // // // // // // // // // // // // // // // //                        style: const TextStyle(
// // // // // // // // // // // // // // // // //                          color: Colors.white,
// // // // // // // // // // // // // // // // //                          fontSize: 18,
// // // // // // // // // // // // // // // // //                          fontWeight: FontWeight.bold,
// // // // // // // // // // // // // // // // //                        ),
// // // // // // // // // // // // // // // // //                      ),
// // // // // // // // // // // // // // // // //                      const SizedBox(height: 20),
// // // // // // // // // // // // // // // // //                      ElevatedButton(
// // // // // // // // // // // // // // // // //                        onPressed: () {
// // // // // // // // // // // // // // // // //                          setState(() {
// // // // // // // // // // // // // // // // //                            x = random.nextInt(10); // Generates a number from 0-9
// // // // // // // // // // // // // // // // //                          // });
// // // // // // // // // // // // // // // // //                        // },
// // // // // // // // // // // // // // // // //                        child: const Text("Try Again"),
// // // // // // // // // // // // // // // // //                      ),
// // // // // // // // // // // // // // // // //                    ],
// // // // // // // // // // // // // // // // //                  ),
// // // // // // // // // // // // // // // // //                ),
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //              ],
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //            ),
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //          ),
// // // // // // // // // // // // // // // // //          floatingActionButton: FloatingActionButton(
// // // // // // // // // // // // // // // // //              onPressed: (){
// // // // // // // // // // // // // // // // //      setState(() {
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //      }
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //      );
// // // // // // // // // // // // // // // // //              },
// // // // // // // // // // // // // // // // //              child: Icon(Icons.refresh),
// // // // // // // // // // // // // // // // //              ),
// // // // // // // // // // // // // // // // //        ),
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //      );
// // // // // // // // // // // // // // // // //    }
// // // // // // // // // // // // // // // // //  }
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // void main()
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // {
// // // // // // // // // // // // // // // // // //   runApp(MyApp());
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // class MyApp extends StatefulWidget {
// // // // // // // // // // // // // // // // // //   const MyApp({super.key});
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // //   State<MyApp> createState() => _MyAppState();
// // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // int x=1;
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // class _MyAppState extends State<MyApp> {
// // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // // // //     return MaterialApp(
// // // // // // // // // // // // // // // // // //       home: Scaffold(
// // // // // // // // // // // // // // // // // //         backgroundColor: Colors.red,
// // // // // // // // // // // // // // // // // //         appBar: AppBar(
// // // // // // // // // // // // // // // // // //           backgroundColor: Colors.yellowAccent,
// // // // // // // // // // // // // // // // // //           title: Text("MaanTechWeb"),
// // // // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // // // //         body: Center(
// // // // // // // // // // // // // // // // // //           child: Center(
// // // // // // // // // // // // // // // // // //     child: Column(
// // // // // // // // // // // // // // // // // //       mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // // // // // // // // //             // crossAxisAlignment: CrossAxisAlignment.center,
// // // // // // // // // // // // // // // // // //             children: [
// // // // // // // // // // // // // // // // // //               Center(
// // // // // // // // // // // // // // // // // //                 child: Text("Lottery num is: $x"),
// // // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // // // Center(
// // // // // // // // // // // // // // // // // //   child: Container(
// // // // // // // // // // // // // // // // // //     width: 250,
// // // // // // // // // // // // // // // // // //     color: Colors.yellowAccent,
// // // // // // // // // // // // // // // // // //     child: Center(
// // // // // // // // // // // // // // // // // //       child: Column(
// // // // // // // // // // // // // // // // // //         children: [
// // // // // // // // // // // // // // // // // //           Center(
// // // // // // // // // // // // // // // // // //       child: Icon(Icons.error_outline,
// // // // // // // // // // // // // // // // // //       color: Colors.grey),
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //     ),
// // // // // // // // // // // // // // // // // //           Text('ur num is: $x: \n try again'),
// // // // // // // // // // // // // // // // // //   ],
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //   ),
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //   ),
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //     ),
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //             ],
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //           ),
// // // // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // //         floatingActionButton: FloatingActionButton(onPressed: (){
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //         },
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //         child: Icon(Icons.refresh),),
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //     ),
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // class MyApp extends StatefulWidget {
// // // // // // // // // // // // // // // // // //   const MyApp({super.key});
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // //   State<MyApp> createState() => _MyAppState();
// // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // Random random=Random();
// // // // // // // // // // // // // // // // // // int x=12;
// // // // // // // // // // // // // // // // // // class _MyAppState extends State<MyApp> {
// // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // // // //     return MaterialApp(
// // // // // // // // // // // // // // // // // //       home: Scaffold(
// // // // // // // // // // // // // // // // // //         backgroundColor: Colors.tealAccent,
// // // // // // // // // // // // // // // // // //         appBar: AppBar(
// // // // // // // // // // // // // // // // // //           title: Text("MYAPP-*"),
// // // // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // // // //         body: Center(
// // // // // // // // // // // // // // // // // //           child: Column(
// // // // // // // // // // // // // // // // // //             mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // // // // // // // // //             crossAxisAlignment: CrossAxisAlignment.center,
// // // // // // // // // // // // // // // // // //             children: [
// // // // // // // // // // // // // // // // // //               Center(
// // // // // // // // // // // // // // // // // //                 child: Text("lottery num is $x"),
// // // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // // //               SizedBox(height: 22,),
// // // // // // // // // // // // // // // // // //               Center(child: Container(
// // // // // // // // // // // // // // // // // //                 height: 250,
// // // // // // // // // // // // // // // // // //                   decoration: BoxDecoration(
// // // // // // // // // // // // // // // // // //                     color: Colors.lightBlue,
// // // // // // // // // // // // // // // // // //                     borderRadius: BorderRadius.circular(19),
// // // // // // // // // // // // // // // // // //                   ),
// // // // // // // // // // // // // // // // // //                 child: Center(
// // // // // // // // // // // // // // // // // //                                  child: Column(
// // // // // // // // // // // // // // // // // //                                    mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // // // // // // // // //                   crossAxisAlignment: CrossAxisAlignment.center,
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //                   children: [
// // // // // // // // // // // // // // // // // //                     Icon(Icons.error_outline,
// // // // // // // // // // // // // // // // // //                       color: Colors.red, size: 30,
// // // // // // // // // // // // // // // // // //                     ),
// // // // // // // // // // // // // // // // // //                     SizedBox(height: 22,),
// // // // // // // // // // // // // // // // // //                     Text("Sorry ur num is $x so \n Try Again"),
// // // // // // // // // // // // // // // // // //                   ],
// // // // // // // // // // // // // // // // // //                 ),
// // // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //               ),),],
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //           ),
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // // // //         floatingActionButton: FloatingActionButton(
// // // // // // // // // // // // // // // // // //             onPressed:  (){
// // // // // // // // // // // // // // // // // //               print(random.nextInt(20).toString());
// // // // // // // // // // // // // // // // // //             }
// // // // // // // // // // // // // // // // // //           ,
// // // // // // // // // // // // // // // // // //         child: Icon(Icons.refresh),),
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // void main()
// // // // // // // // // // // // // // // // // // // {
// // // // // // // // // // // // // // // // // // //   runApp(MyApp());
// // // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // // class MyApp extends StatefulWidget {
// // // // // // // // // // // // // // // // // // //   const MyApp({super.key});
// // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // //   State<MyApp> createState() => _MyAppState();
// // // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // // int x=7;
// // // // // // // // // // // // // // // // // // // class _MyAppState extends State<MyApp> {
// // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // // // // //     return MaterialApp(
// // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // //       home: Scaffold(
// // // // // // // // // // // // // // // // // // //         backgroundColor: Colors.lightBlueAccent,
// // // // // // // // // // // // // // // // // // //         appBar: AppBar(
// // // // // // // // // // // // // // // // // // //           title: Text("MaanTechWide"),
// // // // // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // // // // //         body: Center(
// // // // // // // // // // // // // // // // // // //           child: Column(
// // // // // // // // // // // // // // // // // // //             children: [
// // // // // // // // // // // // // // // // // // //               Center(
// // // // // // // // // // // // // // // // // // //                 child: Text('Ur lottery num is: $x'),),
// // // // // // // // // // // // // // // // // // //               Text(x>7 ? "Sorry its greater" : x.toString(),),
// // // // // // // // // // // // // // // // // // //             ],
// // // // // // // // // // // // // // // // // // //           ),
// // // // // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // // // // //         floatingActionButton: FloatingActionButton(
// // // // // // // // // // // // // // // // // // //             onPressed: ()
// // // // // // // // // // // // // // // // // // //                 {
// // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // //                 },
// // // // // // // // // // // // // // // // // // //           child: Icon(Icons.refresh),
// // // // // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // // // // }
