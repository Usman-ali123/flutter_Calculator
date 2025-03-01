// import 'package:flutter/material.dart';
// import 'package:maheer_khan/home_screen.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
//
// class LogIn extends StatefulWidget {
//   static const String id = 'LogIn';
//   const LogIn({super.key});
//
//   @override
//   State<LogIn> createState() => _LogInState();
// }
//
// class _LogInState extends State<LogIn> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.teal,
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           title: Text('After login'),
//
//         ),
//         body: Column(
//           children: [
//             Center(
//               child: Text('enter Ur Code'),
//             ),
//
//
//             Center(
//               child: Center(
//                 child: PinCodeTextField(
//                     appContext: context,
//                     length: 3,
//                 keyboardType: TextInputType.number,
//                 enabled: true,
//                 pinTheme: PinTheme(
//                   shape: PinCodeFieldShape.box,
//                   borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(11),
//                     topLeft: Radius.circular(11),
//                   ),
//                   fieldHeight: 50,
//                   fieldWidth: 30,
//                   selectedColor: Colors.yellowAccent,
//                   selectedFillColor: Colors.white,
//                 ),
// onChanged: (value){},
//                   cursorColor: Colors.black87,
//
//                              // cursorColor: Colors.black87,
//                 ),
//               ),
//             ),
//             SizedBox(height: 160,),
//
//             Center(
//               child: TextButton(
//                   onPressed: ()
//                   {
//                     Navigator.pushNamed(context, HomeScreen.id);
//                   }, child: Text('Click for Back to Home-screen')),
//             ) ,
//           ],
//
//         ),
//
//       ),
//     );
//   }
// }
