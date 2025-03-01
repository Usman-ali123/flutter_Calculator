import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:maheer_khan/constant.dart';
import 'package:maheer_khan/components/my_button.dart';
import 'package:math_expressions/math_expressions.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String userinp='';
  String ans='';

  void equalpress(){
    try{
      Parser p=Parser();
      Expression exp=p.parse(userinp);
      ContextModel cm=ContextModel();
      double eval=exp.evaluate(EvaluationType.REAL, cm);
      setState(() {
        ans=eval.toString();
      });
    }
    catch(e)
    {
      setState(() {
        ans='error';
      });

    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text('Calculator', style: headingTextStyle,),
        ),
        body: Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,


              children: [
                Padding(

                    padding: EdgeInsets.all(20),
                child: Text(userinp, style:headingTextStyle,),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(ans, style:headingTextStyle,),
                ),
        Row(
                children: [
                  MyButton(
                      title: 'A/c',
                      color: Color(0xffffa00a),
                      onpress: () {
                        setState(() {
                          userinp = '';
                          ans = '';
                        });
                      }),
                  MyButton(
                      title: '+/-',
                      onpress: () {
                        setState(() {
                          userinp += '+/- ';

                        });
                      }),
                  MyButton(
                      title: '%',
                      onpress: () {
                        setState(() {
                          userinp += '%';
                        });
                      }),
                  MyButton(
                      title: '/',
                      color: Color(0xffffa00a),
                      onpress: () {
                        setState(() {
                          userinp += '/';
                        });
                      }),
                ],
              ),
              Row(
                children: [
                  MyButton(
                      title: '7',
                      onpress: () {
                        setState(() {
                          userinp += '7';
                        });
                      }),
                  MyButton(
                      title: '8',
                      onpress: () {
                        setState(() {
                          userinp += '8';
                        });
                      }),
                  MyButton(
                      title: '9',
                      onpress: () {
                        setState(() {
                          userinp += '9';
                        });
                      }),
                  MyButton(
                      title: 'x',
                      color: Color(0xffffa00a),
                      onpress: () {
                        setState(() {
                          userinp += '*';
                        });
                      }),
                ],
              ),
              Row(
                children: [
                  MyButton(
                      title: '4',
                      onpress: () {
                        setState(() {
                          userinp += '4';
                        });
                      }),
                  MyButton(
                      title: '5',
                      onpress: () {
                        setState(() {
                          userinp += '5';
                        });
                      }),
                  MyButton(
                      title: '6',
                      onpress: () {
                        setState(() {
                          userinp += '6';
                        });
                      }),
                  MyButton(
                      title: '-',
                      color: Color(0xffffa00a),
                      onpress: () {
                        setState(() {
                          userinp += '-';
                        });
                      }),
                ],
              ),
              Row(
                children: [
                  MyButton(
                      title: '1',
                      onpress: () {
                        setState(() {
                          userinp += '1';
                        });
                      }),
                  MyButton(
                      title: '2',
                      onpress: () {
                        setState(() {
                          userinp += '2';
                        });
                      }),
                  MyButton(
                      title: '3',
                      onpress: () {
                        setState(() {
                          userinp += '3';
                        });
                      }),
                  MyButton(
                      title: '+',
                      color: Color(0xffffa00a),
                      onpress: () {
                        setState(() {
                          userinp += '+';
                        });
                      }),
                ],
              ),
              Row(
                children: [
                  MyButton(
                      title: '0',
                      onpress: () {
                        setState(() {
                          userinp = '0';
                        });
                      }),
                  MyButton(
                      title: '.',
                      onpress: () {
                        setState(() {
                          userinp += '.';
                        });
                      }),
                  MyButton(
                      title: 'end',
                      onpress: () {
                        setState(() {
                          userinp += 'end';
                        });
                      }),
                  MyButton(
                      title: '=',
                      onpress: () {
                        setState(() {
                         equalpress();
                        });
                      }),


              ],
          ),
        ],),
      ),
    ),);
  }
}



//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
//
// class _HomeScreenState extends State<HomeScreen> {
//   String userinp = '';
//   String ans = '';
//   void equalpress() {
//     try {
//       Parser p = Parser();
//       Expression exp = p.parse(userinp);
//       ContextModel cm = ContextModel();
//       double eval = exp.evaluate(EvaluationType.REAL, cm);
//
//       setState(() {
//         ans = eval.toString();
//       });
//     } catch (e) {
//       setState(() {
//         ans = "Error";
//       });
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.black,
//         appBar: AppBar(
//           backgroundColor: Colors.lightBlueAccent,
//           title: Text(
//             'Calculator',
//             style: headingTextStyle,
//           ),
//         ),
//         body: Expanded(
//           flex: 2,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Padding(
//                 padding: EdgeInsets.all(20.0),
//                 child: Text(
//                   userinp,
//                   style: headingTextStyle,
//                 ),
//               ),
//
//               Padding(padding: EdgeInsets.all(20),
//               child: Text(ans, style: headingTextStyle,),),
//               Row(
//                 children: [
//                   MyButton(
//                       title: 'A/c',
//                       color: Color(0xffffa00a),
//                       onpress: () {
//                         setState(() {
//                           userinp = '';
//                           ans = '';
//                         });
//                       }),
//                   MyButton(
//                       title: '+/-',
//                       onpress: () {
//                         setState(() {
//                           userinp = '+/- $userinp';
//                           ans = '1 $ans';
//                         });
//                       }),
//                   MyButton(
//                       title: '%',
//                       onpress: () {
//                         setState(() {
//                           userinp += '%';
//                         });
//                       }),
//                   MyButton(
//                       title: '/',
//                       color: Color(0xffffa00a),
//                       onpress: () {
//                         setState(() {
//                           userinp += '/';
//                         });
//                       }),
//                 ],
//               ),
//               Row(
//                 children: [
//                   MyButton(
//                       title: '7',
//                       onpress: () {
//                         setState(() {
//                           userinp += '7';
//                         });
//                       }),
//                   MyButton(
//                       title: '8',
//                       onpress: () {
//                         setState(() {
//                           userinp += '8';
//                         });
//                       }),
//                   MyButton(
//                       title: '9',
//                       onpress: () {
//                         setState(() {
//                           userinp += '9';
//                         });
//                       }),
//                   MyButton(
//                       title: 'x',
//                       color: Color(0xffffa00a),
//                       onpress: () {
//                         setState(() {
//                           userinp += '*';
//                         });
//                       }),
//                 ],
//               ),
//               Row(
//                 children: [
//                   MyButton(
//                       title: '4',
//                       onpress: () {
//                         setState(() {
//                           userinp += '4';
//                         });
//                       }),
//                   MyButton(
//                       title: '5',
//                       onpress: () {
//                         setState(() {
//                           userinp += '5';
//                         });
//                       }),
//                   MyButton(
//                       title: '6',
//                       onpress: () {
//                         setState(() {
//                           userinp += '6';
//                         });
//                       }),
//                   MyButton(
//                       title: '-',
//                       color: Color(0xffffa00a),
//                       onpress: () {
//                         setState(() {
//                           userinp += '-';
//                         });
//                       }),
//                 ],
//               ),
//               Row(
//                 children: [
//                   MyButton(
//                       title: '1',
//                       onpress: () {
//                         setState(() {
//                           userinp += '1';
//                         });
//                       }),
//                   MyButton(
//                       title: '2',
//                       onpress: () {
//                         setState(() {
//                           userinp += '2';
//                         });
//                       }),
//                   MyButton(
//                       title: '3',
//                       onpress: () {
//                         setState(() {
//                           userinp += '3';
//                         });
//                       }),
//                   MyButton(
//                       title: '+',
//                       color: Color(0xffffa00a),
//                       onpress: () {
//                         setState(() {
//                           userinp += '+';
//                         });
//                       }),
//                 ],
//               ),
//               Row(
//                 children: [
//                   MyButton(
//                       title: '0',
//                       onpress: () {
//                         setState(() {
//                           userinp = '0';
//                         });
//                       }),
//                   MyButton(
//                       title: '.',
//                       onpress: () {
//                         setState(() {
//                           userinp = '. $userinp';
//                         });
//                       }),
//                   MyButton(
//                       title: 'end',
//                       onpress: () {
//                         setState(() {
//                           userinp += 'end';
//                         });
//                       }),
//                   MyButton(
//                       title: '=',
//                       color: Color(0xffffa00a),
//                       onpress: () {
//                         setState(() {
//                           equalpress();
//             ;            });
//                       }),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
// //
// // class HomeScreen extends StatefulWidget {
// //   const HomeScreen({super.key});
// //
// //   @override
// //   State<HomeScreen> createState() => _HomeScreenState();
// // }
// //
// // class _HomeScreenState extends State<HomeScreen> {
// //   String userinp = '';  // Explicitly initializing as an empty string.
// //   String ans = '';      // Explicitly initializing as an empty string.
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return SafeArea(
// //       child: Scaffold(
// //         backgroundColor: Colors.black,
// //         appBar: AppBar(
// //           backgroundColor: Colors.lightBlueAccent,
// //           centerTitle: false,
// //           title: Text('Calculator', style: headingTextStyle),
// //         ),
// //         body: Padding(
// //           padding: const EdgeInsets.all(8.0),
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.end,
// //             crossAxisAlignment: CrossAxisAlignment.end,
// //             children: [
// //               // Display the current user input
// //               Text(userinp, style: headingTextStyle),
// //               SizedBox(height: 10),
// //               // Display the result
// //               Text(ans, style: TextStyle(fontSize: 40, color: Colors.white)),
// //
// //               // Row of buttons
// //               Row(
// //                 children: [
// //                   MyButton(
// //                     title: 'A/c',
// //                     onpress: () {
// //                       setState(() {
// //                         userinp = '';  // Clear user input
// //                         ans = '';      // Clear answer
// //                       });
// //                     },
// //                   ),
// //                   MyButton(
// //                     title: '+/-',
// //                     onpress: () {
// //                       setState(() {
// //                         userinp = '-$userinp'; // Toggle the sign of the user input
// //                       });
// //                     },
// //                   ),
// //                   MyButton(
// //                     title: '%',
// //                     onpress: () {
// //                       setState(() {
// //                         userinp += '%';  // Append percentage symbol
// //                       });
// //                     },
// //                   ),
// //                   MyButton(
// //                     title: '/',
// //                     color: Color(0xffffa00a),
// //                     onpress: () {
// //                       setState(() {
// //                         userinp += '/';  // Append division symbol
// //                       });
// //                     },
// //                   ),
// //                 ],
// //               ),
// //
// //               // More rows for calculator buttons
// //               // Add your other rows (e.g., for digits and operations) as you have done previously
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
//
// // class HomeScreen extends StatefulWidget {
// //   const HomeScreen({super.key});
// //
// //   @override
// //   State<HomeScreen> createState() => _HomeScreenState();
// // }
// //
// // class _HomeScreenState extends State<HomeScreen> {
// //   var userinp = '';
// //   var ans = '';
// //   @override
// //   Widget build(BuildContext context) {
// //     return SafeArea(
// //       child: Scaffold(
// //         backgroundColor: Colors.black,
// //         appBar: AppBar(
// //           backgroundColor: Colors.greenAccent,
// //           title: Text('Calculator', style: headingTextStyle,),
// //         ),
// //         body: Expanded(
// //         flex: 3,
// //           child: Column(
// //
// //             children: [
// //               //Text(userinp.toString(), style: headingTextStyle,),
// //               Text(ans.toString(), style: headingTextStyle,),
// //               Row(
// //                 children: [
// //                   MyButton(title: 'A/c', onpress: ()
// //                     {
// //                       userinp='';
// //                       ans='';
// //                       setState(() {
// //
// //                       });
// //                     },),
// //                   MyButton(title: '2', onpress:()
// //                     {
// //                       userinp='2';
// //                       ans+='2';
// //                       setState(() {
// //
// //                       });
// //                     },),
// //                   MyButton(title: '3',onpress: ()
// //                   {
// //                     userinp='3';
// //                     ans+='3';
// //                     setState(() {
// //
// //                     });
// //                   },
// //                   ),
// //                   MyButton(title: 'l', color: Color(0xffffa00a),
// //                   onpress: (){
// //                     userinp='l';
// //                     ans+='l';
// //                     setState(() {
// //
// //                     });
// //                   },),
// //                 ],
// //               ),
// //
// //
// //
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // class HomeScreen extends StatefulWidget {
// //
// //     HomeScreen({super.key});
// //
// //
// //   @override
// //   State<HomeScreen> createState() => _HomeScreenState();
// // }
// //
// // class _HomeScreenState extends State<HomeScreen> {
// //
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.black,
// //       appBar: AppBar(
// //         backgroundColor: Colors.green,
// //         centerTitle: false,
// //         title: Text('Calculator', style: TextStyle(
// //           color: Colors.white,
// //           fontWeight: FontWeight.w800,
// //           fontSize: 27,
// //         ),),
// //       ),
// //       body: Expanded(
// //         flex: 2,
// //         child: Column(
// //
// //             children: [
// //               Row(
// //                 children: [
// //                   Text( '', style: TextStyle(
// //                     color: Colors.white, fontSize: 22,
// //                   ),),
// //                   MyButton(title: 'A/c', onpress: (){
// //
// //                   },),
// //                   MyButton(title: '2'),
// //                   MyButton(title: '3'),
// //                   MyButton(title: '4', color: Colors.orange,),
// //                 ],
// //               ),
// //               Row(
// //                 children: [
// //                   MyButton(title: '1'),
// //                   MyButton(title: '2'),
// //                   MyButton(title: '3'),
// //                   MyButton(title: '4', color: Colors.orange,),
// //                 ],
// //               ),
// //               Row(
// //                 children: [
// //                   MyButton(title: '1'),
// //                   MyButton(title: '2'),
// //                   MyButton(title: '3'),
// //                   MyButton(title: '4', color: Colors.orange,),
// //                 ],
// //               ),
// //               Row(
// //                 children: [
// //                   MyButton(title: '1'),
// //                   MyButton(title: '2'),
// //                   MyButton(title: '3'),
// //                   MyButton(title: '4', color: Colors.orange,),
// //                 ],
// //               ),
// //
// //             ],
// //         ),
// //       ),
// //     );
// //   }
// // }
//
// // class HomeScreen extends StatefulWidget {
// //   const HomeScreen({super.key});
// //
// //   @override
// //   State<HomeScreen> createState() => _HomeScreenState();
// // }
// //
// // class _HomeScreenState extends State<HomeScreen> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return SafeArea(
// //         child: Expanded(
// //           child: Scaffold(
// //             backgroundColor: Colors.black87,
// //             appBar: AppBar(
// //               title: Text('Calculator', style: headingTextStyle,),
// //               backgroundColor: Colors.green,
// //             ),
// //             body: Expanded(
// //               child: Column(
// //                 children: [
// //                   Row(
// //                     children: [
// //                       MyButton(title: 'A/c',color: Colors.black, ),
// //                       MyButton(title: '+/-' ),
// //                       MyButton(title: '%', ),
// //                       MyButton(title: '/', color: Colors.deepOrange, ),
// //                     ],
// //                   ),
// //                   Row(
// //                     children: [
// //                       MyButton(title: '1', ),
// //                       MyButton(title: '2', ),
// //                       MyButton(title: '3', ),
// //                       MyButton(title: '4', color: Colors.deepOrange, ),
// //                     ],
// //                   ),
// //                   Row(
// //                     children: [
// //                       MyButton(title: '1', ),
// //                       MyButton(title: '2', ),
// //                       MyButton(title: '3', ),
// //                       MyButton(title: '4', color: Colors.deepOrange, ),
// //                     ],
// //                   ),
// //                   Row(
// //                     children: [
// //                       MyButton(title: '1', ),
// //                       MyButton(title: '2', ),
// //                       MyButton(title: '3', ),
// //                       MyButton(title: '4', color: Colors.deepOrange, ),
// //                     ],
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ));
// //   }
// // }
//
// // import 'package:maheer_khan/components/my_button.dart';
// // import 'package:maheer_khan/constant.dart';
// //
// // class HomeScreen extends StatefulWidget {
// //   const HomeScreen({super.key});
// //
// //   @override
// //   State<HomeScreen> createState() => _HomeScreenState();
// // }
// //
// // class _HomeScreenState extends State<HomeScreen> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       appBar: AppBar(
// //         backgroundColor: Colors.black87,
// //         title: Text('Calculator', style: headingTextStyle),
// //       ),
// //       body: SafeArea(
// //         child: Column(
// //           children: [
// //             Row(
// //               children: [
// //                 MyButton(title: '1'),
// //                 MyButton(title: '2'),
// //                 MyButton(title: '3'),
// //                 MyButton(title: '4', color: Color(0xffffa00a)),
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
//
// // import 'package:flutter/material.dart';
// // import 'package:maheer_khan/components/my_button.dart';
// // import 'package:maheer_khan/constant.dart';
// //
// // class HomeScreen extends StatefulWidget {
// //   const HomeScreen({super.key});
// //
// //   @override
// //   State<HomeScreen> createState() => _HomeScreenState();
// // }
// //
// // class _HomeScreenState extends State<HomeScreen> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //        appBar: AppBar(
// //            backgroundColor: Colors.black87,
// //          title: Text('Calculator', style: headingTextStyle,),
// //        ),
// //        body: SafeArea(
// //          child: Column(
// //             children: [
// //               Row(
// //                 children: [
// //                   MyButton(title: '1',  ),
// //                   MyButton(title: '2',  ),
// //                   MyButton(title: '3',  ),
// //                   MyButton(title: '4', color: Color(0xffffa00a),  ),
// //                 ],
// //               )
// //             ],
// //                ),
// //        ),
// //     );
// //   }
// // }
// //
//
// // // // import 'package:animated_text_kit/animated_text_kit.dart';
// // import 'package:flutter/material.dart';
// // import 'package:maheer_khan/constant.dart';
// // // import 'package:maheer_khan/constant.dart';
// // // // import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// // // // import 'package:maheer_khan/log_in.dart';
// // // // import 'package:pin_code_fields/pin_code_fields.dart';
// // // // import 'package:readmore/readmore.dart';
// // // //
// // //
// //
// // class HomeScreen extends StatefulWidget {
// //   const HomeScreen({super.key});
// //
// //   @override
// //   State<HomeScreen> createState() => _HomeScreenState();
// // }
// //
// // class _HomeScreenState extends State<HomeScreen> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return SafeArea(
// //       child: Scaffold(
// //         backgroundColor: Colors.white,
// //         appBar: AppBar(
// //           backgroundColor: Colors.teal,
// //           title: Text("Calculator", style: headingTextStyle),
// //         ),
// //         body: SafeArea(
// //           child: Column(
// //             children: [
// //               Row(
// //                 children: [
// //                     MyButton(),
// //                   MyButton(),
// //                   MyButton(),
// //                 ],
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// //
// // class MyButton extends StatefulWidget {
// //   const MyButton({super.key});
// //
// //   @override
// //   State<MyButton> createState() => _MyButtonState();
// // }
// //
// // class _MyButtonState extends State<MyButton> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return   Container(
// //           decoration: BoxDecoration(
// //             color: Colors.black45,
// //             borderRadius: BorderRadius.circular(100),
// //           ),
// //
// //           width: 50,
// //           height: 50,
// //           child: Center(child: Text('', style: headingTextStyle,)),
// //
// //
// //
// //     );
// //   }
// // }
// //
// //
// // // class HomeScreen extends StatefulWidget {
// // //   const HomeScreen({super.key});
// // //
// // //   @override
// // //   State<HomeScreen> createState() => _HomeScreenState();
// // // }
// // //
// // // class _HomeScreenState extends State<HomeScreen> {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: Colors.white,
// // //       body: SafeArea(
// // //         child: Column(
// // //           children:  [
// // //             Text('Below is container'),
// // //             Center(
// // //               child: containerDec,
// // //
// // //             ),
// // //             SizedBox(height: 22,),
// // //
// // //          Column(
// // //            children: [
// // //                   MyButton(),
// // //              MyButton(),
// // //              MyButton(),
// // //              MyButton(),
// // //             Button(name: 'khan' ),
// // //
// // //            ],
// // //          ),
// // //
// // //             SizedBox(height: 22,),
// // //             Center(
// // //              )
// // //         ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // //
// // // class MyButton extends StatelessWidget {
// // //   const MyButton({super.key});
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Padding(
// // //       padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 2),
// // //       child: Container(
// // //
// // //         width: 350, height: 45,
// // //         decoration: BoxDecoration(
// // //           color: Colors.deepOrange,
// // //           borderRadius: BorderRadius.circular(10),
// // //         ),
// // //         child: Center(
// // //           child: Text('Log-in', style: headingTextStyle,
// // //
// // //
// // //           ),),
// // //         ),
// // //
// // //     );
// // //   }
// // // }
// // //
// // //  class Button extends StatefulWidget {
// // //   final String name;
// // //    const Button({super.key,  this.name=''});
// // //
// // //    @override
// // //    State<Button> createState() => _ButtonState();
// // //  }
// // //
// // //  class _ButtonState extends State<Button> {
// // //    @override
// // //    Widget build(BuildContext context) {
// // //      return  Padding(
// // //        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 2),
// // //        child: Container(
// // //
// // //          width: 350, height: 45,
// // //          decoration: BoxDecoration(
// // //            color: Colors.green,
// // //            borderRadius: BorderRadius.circular(10),
// // //          ),
// // //          child: Center(
// // //            child: Text('' , style: headingTextStyle,
// // //
// // //
// // //            ),),
// // //        ),
// // //
// // //      );
// // //
// // //
// // //    }
// // //  }
// // //
// // //
// // //
// // //
// // // //
// // // //
// // // // class HomeScreen extends StatefulWidget {
// // // //   static const String id='HomeScreen';
// // // //   const HomeScreen({super.key});
// // // //
// // // //   @override
// // // //   State<HomeScreen> createState() => _HomeScreenState();
// // // // }
// // // //
// // // // class _HomeScreenState extends State<HomeScreen> {
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return SafeArea(
// // // //       child: Scaffold(
// // // //         backgroundColor: Colors.white,
// // // //         appBar: AppBar(
// // // //           backgroundColor: Colors.green,
// // // //           title: Text('MY_APP', style: TextStyle(fontWeight: FontWeight.w800,
// // // //           fontSize: 30, fontFamily: 'Normal', ),),
// // // //           centerTitle: false,
// // // //         ),
// // // //
// // // //         body: SafeArea(
// // // //           child: Column(
// // // //             children: [
// // // //               Center(
// // // //                 child: Column(
// // // //
// // // //                   children: [
// // // //
// // // //                     SizedBox(height: 55,),
// // // //
// // // //                     Center(
// // // //                       child: TextButton(
// // // //                           onPressed: ()
// // // //                         {
// // // //                           Navigator.pushNamed(context, LogIn.id);
// // // //                         },
// // // //                         child: Text('Log-in',
// // // //
// // // //                       style: TextStyle(
// // // //                         fontSize: 23,
// // // //                         fontWeight: FontWeight.w800,
// // // //                         color: Colors.orangeAccent,
// // // //
// // // //                       ),
// // // //
// // // //                       ),
// // // //                     ),
// // // //                     //SizedBox(height: 7,),
// // // //
// // // //                   ),],
// // // //                 ),
// // // //
// // // //
// // // //               ),
// // // //               SizedBox(height: 100,),
// // // //               Center(
// // // //                 child: Column(
// // // //
// // // //                   children: [
// // // //                     Center(
// // // //                       child: TextFormField(
// // // //
// // // //                         decoration: InputDecoration(
// // // //                           prefixIconColor: Colors.teal,
// // // //                           prefixIcon: Icon(Icons.mail_outline_sharp, size: 18,),
// // // //                          border: OutlineInputBorder(
// // // //                            borderRadius: BorderRadius.circular(7),
// // // //                            borderSide: BorderSide(
// // // //                              width: 2,
// // // //                              color: Colors.deepOrange,
// // // //                            ),
// // // //
// // // //                          ),
// // // //                           hintText: 'E-mail',
// // // //                           hintStyle: TextStyle(
// // // //                             color: Colors.grey,
// // // //                             fontWeight: FontWeight.w500,
// // // //                           ),
// // // //
// // // //                         ),
// // // //
// // // //                       ),
// // // //                     ),
// // // //                     SizedBox(height: 40,),
// // // //                     Center(
// // // //                       child: TextFormField(
// // // //
// // // //                         decoration: InputDecoration(
// // // //                           prefixIconColor: Colors.teal,
// // // //                           prefixIcon: Icon(Icons.password, size: 18,),
// // // //                           border: OutlineInputBorder(
// // // //                             borderRadius: BorderRadius.circular(7),
// // // //                             borderSide: BorderSide(
// // // //                               width: 2,
// // // //                               color: Colors.deepOrange,
// // // //                             ),
// // // //
// // // //                           ),
// // // //                           hintText: 'Password',
// // // //                           hintStyle: TextStyle(
// // // //                             color: Colors.grey,
// // // //                             fontWeight: FontWeight.w500,
// // // //                           ),
// // // //
// // // //                         ),
// // // //
// // // //                       ),
// // // //                     ),
// // // //                   ],
// // // //                 ),
// // // //               ),
// // // //           SizedBox(height: 100,),
// // // //               Center(
// // // //                 child: Column(
// // // //                   children: [
// // // //                     Center(
// // // //                       child: Container(
// // // //
// // // //                         width: 333,
// // // //                         height: 50,
// // // //                         color: Colors.orange,
// // // //                         child: Center(
// // // //                           child: Text('Log-in',
// // // //                           style: TextStyle(
// // // //                             color: Colors.black87,
// // // //                             fontSize: 27,
// // // //
// // // //                             fontWeight: FontWeight.bold
// // // //                           ),),
// // // //                         ),
// // // //                       ),
// // // //
// // // //                     ),
// // // //                     Center(
// // // //                       child: Row(
// // // //                         mainAxisAlignment: MainAxisAlignment.center,
// // // //                         crossAxisAlignment: CrossAxisAlignment.center,
// // // //                         children: [
// // // //                           Center(
// // // //                               child: Text("Don't have account?",
// // // //                               style: TextStyle(
// // // //                                 color: Colors.teal,
// // // //                                 fontWeight: FontWeight.w300,
// // // //                               ),),
// // // //                           ),
// // // //                           Center(
// // // //                             child: Text('Sign-up',
// // // //                               style: TextStyle(
// // // //                                 color: Colors.deepOrange,
// // // //                                 fontWeight: FontWeight.w500,
// // // //                               ),),
// // // //                           )
// // // //                         ],
// // // //                       )
// // // //                     )
// // // //                   ],
// // // //                 ),
// // // //               ),
// // // //             ],
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }
// // // //
// // // // //
// // // // // class HomeScreen extends StatefulWidget {
// // // // //   const HomeScreen({super.key});
// // // // //
// // // // //   @override
// // // // //   State<HomeScreen> createState() => _HomeScreenState();
// // // // // }
// // // // //
// // // // // class _HomeScreenState extends State<HomeScreen> {
// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return SafeArea(
// // // // //       child: Scaffold(
// // // // //         backgroundColor: Colors.white,
// // // // //         appBar: AppBar(
// // // // //           title: Text('Gen-App'),
// // // // //           backgroundColor: Colors.cyanAccent,
// // // // //           centerTitle: false,
// // // // //         ),
// // // // //         body: Column(
// // // // //           children: [
// // // // //             Center(
// // // // //               child: AnimatedTextKit(
// // // // //                   animatedTexts: [
// // // // //                     TypewriterAnimatedText('Hello '),
// // // // //                   ],
// // // // //
// // // // //               totalRepeatCount: 3,
// // // // //               )
// // // // //             ),
// // // // //             SizedBox(height: 11,),
// // // // //             Center(
// // // // //               child: Container(
// // // // //                 width: 222,
// // // // //                 height: 222,
// // // // //                 color: Colors.teal,
// // // // //                 child: AnimatedTextKit(
// // // // //                     animatedTexts: [
// // // // //                       FadeAnimatedText('Pakisstan'),
// // // // //
// // // // //                     ]
// // // // //
// // // // //                 ) ,
// // // // //               ) ,
// // // // //             )
// // // // //           ],
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }
// // // // //
// // // // // //
// // // // // //
// // // // // // class HomeScreen extends StatefulWidget {
// // // // // //   const HomeScreen({super.key});
// // // // // //
// // // // // //   @override
// // // // // //   State<HomeScreen> createState() => _HomeScreenState();
// // // // // // }
// // // // // //
// // // // // // class _HomeScreenState extends State<HomeScreen> {
// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Scaffold(
// // // // // //       backgroundColor: Colors.yellowAccent,
// // // // // //       appBar: AppBar(
// // // // // //         backgroundColor: Colors.red,
// // // // // //         title: Text('Hello dear'),
// // // // // //         centerTitle: false,
// // // // // //         foregroundColor: Colors.green,
// // // // // //       ),
// // // // // //       body: Center(
// // // // // //         // child: Column(
// // // // // //         //   children: [
// // // // // //         //     Container(
// // // // // //         //       color: Colors.grey,
// // // // // //         //       width: 190, height: 190,
// // // // // //         //       child: Center(
// // // // // //         //         child:  AnimatedTextKit(
// // // // // //         //             animatedTexts: [
// // // // // //         //               TypewriterAnimatedText('Hello Animals',
// // // // // //         //               textStyle: TextStyle(color: Colors.black,
// // // // // //         //               fontSize: 22, fontWeight: FontWeight.bold,
// // // // // //         //               ),),
// // // // // //         //             ]),
// // // // // //         //       ),
// // // // // //         //     ),
// // // // // //         //     SizedBox(height: 12,),
// // // // // //         //     Container(
// // // // // //         //       color: Colors.cyan,
// // // // // //         //       width: 190, height: 190,
// // // // // //         //       child: Center(
// // // // // //         //         child: AnimatedTextKit(
// // // // // //         //           animatedTexts: [
// // // // // //         //             TypewriterAnimatedText('Hello Animals',
// // // // // //         //               textStyle: TextStyle(color: Colors.black,
// // // // // //         //                 fontSize: 22, fontWeight: FontWeight.bold,
// // // // // //         //               ),
// // // // // //         //               speed: Duration(seconds: 2),
// // // // // //         //             ),
// // // // // //         //
// // // // // //         //           ],
// // // // // //         //
// // // // // //         //           totalRepeatCount: 4,),
// // // // // //         //       ),
// // // // // //         //     ),
// // // // // //         //     SizedBox(height: 12,),
// // // // // //         //
// // // // // //         //     Container(
// // // // // //         //       color: Colors.white,
// // // // // //         //       width: 190, height: 190,
// // // // // //         //       child: Center(
// // // // // //         //         child:   AnimatedTextKit(
// // // // // //         //             animatedTexts: [
// // // // // //         //               FadeAnimatedText('Hello Animals',
// // // // // //         //                 textStyle: TextStyle(color: Colors.black,
// // // // // //         //                   fontSize: 22, fontWeight: FontWeight.bold,
// // // // // //         //                 ),
// // // // // //         //
// // // // // //         //               ),
// // // // // //         //
// // // // // //         //             ],
// // // // // //         //
// // // // // //         //         totalRepeatCount: 4,),
// // // // // //         //       ),
// // // // // //         //     ),
// // // // // //         //
// // // // // //         //
// // // // // //         //   ],
// // // // // //         // ),
// // // // // //         child: PinCodeTextField(
// // // // // //             appContext: appContext, length: length),
// // // // // //       ),
// // // // // //
// // // // // //
// // // // // //     );
// // // // // //   }
// // // // // // }
// // // // // //
// // // // // // // class HomeScreen extends StatefulWidget {
// // // // // // //   const HomeScreen({super.key});
// // // // // // //
// // // // // // //   @override
// // // // // // //   State<HomeScreen> createState() => _HomeScreenState();
// // // // // // // }
// // // // // // //
// // // // // // // class _HomeScreenState extends State<HomeScreen> {
// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return Scaffold(
// // // // // // //       backgroundColor: Colors.grey,
// // // // // // //       appBar: AppBar(
// // // // // // //         title: Text('WhatsApp'),
// // // // // // //         backgroundColor: Colors.white,
// // // // // // //       ),
// // // // // // //       body:  AnimatedTextKit(
// // // // // // //           animatedTexts: [
// // // // // // //             TypewriterAnimatedText(
// // // // // // //               'Hello world!',
// // // // // // //               textStyle: const TextStyle(
// // // // // // //                 fontSize: 32.0,
// // // // // // //                 fontWeight: FontWeight.bold,
// // // // // // //               ),
// // // // // // //               speed: const Duration(milliseconds: 200),
// // // // // // //             ),
// // // // // // //           ],
// // // // // // //
// // // // // // //           totalRepeatCount: 4,
// // // // // // //           pause: const Duration(milliseconds: 100),
// // // // // // //           displayFullTextOnTap: true,
// // // // // // //           stopPauseOnTap: true,
// // // // // // //
// // // // // // //       ),
// // // // // // //
// // // // // // //     );
// // // // // // //   }
// // // // // // // }
// // // // // // //
// // // // // // //
// // // // // // // // class HomeScreen extends StatefulWidget {
// // // // // // // //   const HomeScreen({super.key});
// // // // // // // //
// // // // // // // //   @override
// // // // // // // //   State<HomeScreen> createState() => _HomeScreenState();
// // // // // // // // }
// // // // // // // //
// // // // // // // // class _HomeScreenState extends State<HomeScreen> {
// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     return SafeArea(
// // // // // // // //       child: DefaultTabController(
// // // // // // // //           length: 4, child: Scaffold(
// // // // // // // //         backgroundColor: Colors.white,
// // // // // // // //         appBar: AppBar(
// // // // // // // //           actions: [
// // // // // // // //
// // // // // // // //             Icon(Icons.search),
// // // // // // // //             SizedBox(width: 10,),
// // // // // // // //
// // // // // // // //             Badge(
// // // // // // // //               largeSize: 16,
// // // // // // // //
// // // // // // // //             ),
// // // // // // // //             PopupMenuButton(
// // // // // // // //               child: Icon(Icons.settings),
// // // // // // // //                 itemBuilder: (context)=>[
// // // // // // // //                  PopupMenuItem(
// // // // // // // //                      child:Text('New') ,),
// // // // // // // //                   PopupMenuItem(child: Text('Calling system')),
// // // // // // // //                   PopupMenuItem(child: Text('System')),
// // // // // // // //                 ]),
// // // // // // // //
// // // // // // // //             SizedBox(width: 10,),
// // // // // // // //
// // // // // // // //             PopupMenuButton(
// // // // // // // //               child:  Icon(Icons.more_vert_outlined),
// // // // // // // //                 itemBuilder: (context)=>  [
// // // // // // // //                   PopupMenuItem(child: Text('New group')),
// // // // // // // //                   PopupMenuItem(child: Text('more settings'),),
// // // // // // // //                   PopupMenuItem(child: Text('Log-out'),),
// // // // // // // //
// // // // // // // //
// // // // // // // //
// // // // // // // //                 ],),
// // // // // // // //
// // // // // // // //           ],
// // // // // // // //           backgroundColor: Colors.teal,
// // // // // // // //           title: Text('Whatsapp'),
// // // // // // // //           centerTitle: false,
// // // // // // // //           bottom: TabBar(
// // // // // // // //               tabs: [
// // // // // // // //                 Tab(child: Icon(Icons.camera_alt_outlined),),
// // // // // // // //                 Tab(child: Text('Chats'),),
// // // // // // // //                 Tab(child: Text('Calls'),),
// // // // // // // //                 Tab(child: Text('Status'),),
// // // // // // // //               ],),
// // // // // // // //         ),
// // // // // // // //
// // // // // // // //       body: TabBarView(
// // // // // // // //           children: [
// // // // // // // //             Text('camera'),
// // // // // // // //            // AnimatedTextKit(animatedTexts: animatedTexts)
// // // // // // // //            ListView.builder(
// // // // // // // //              itemCount: 33,
// // // // // // // //                itemBuilder: (context, index)
// // // // // // // //            {
// // // // // // // //              return ListTile(
// // // // // // // //                leading: CircleAvatar(
// // // // // // // //                  child: Icon(Icons.account_circle_rounded),
// // // // // // // //                ),
// // // // // // // //                title: Text('Name'),
// // // // // // // //                subtitle: Text('Save it properly'),
// // // // // // // //
// // // // // // // //              );
// // // // // // // //
// // // // // // // //            },),
// // // // // // // //
// // // // // // // //             Text('calls'),
// // // // // // // //
// // // // // // // //             Text('Status'),
// // // // // // // //           ],
// // // // // // // //       ),
// // // // // // // //
// // // // // // // //       ),
// // // // // // // //     ),);
// // // // // // // //   }
// // // // // // // // }
// // // // // // // //
// // // // // // // // //
// // // // // // // // // class HomeScreen extends StatefulWidget {
// // // // // // // // //   const HomeScreen({super.key});
// // // // // // // // //
// // // // // // // // //   @override
// // // // // // // // //   State<HomeScreen> createState() => _HomeScreenState();
// // // // // // // // // }
// // // // // // // // //
// // // // // // // // // class _HomeScreenState extends State<HomeScreen> {
// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return DefaultTabController(
// // // // // // // // //         length: 4,
// // // // // // // // //         child: SafeArea(
// // // // // // // // //           child: Scaffold(
// // // // // // // // //             backgroundColor: Colors.white,
// // // // // // // // //             appBar: AppBar(
// // // // // // // // //               title: Text('Whatsapp'),
// // // // // // // // //               centerTitle: false,
// // // // // // // // //               backgroundColor: Colors.green,
// // // // // // // // //               bottom: TabBar(
// // // // // // // // //                   tabs: [
// // // // // // // // //                     Tab(child: Icon(Icons.camera),),
// // // // // // // // //                     Tab(child: Text('Chats'),),
// // // // // // // // //                     Tab(child: Text('Calls'),),
// // // // // // // // //                     Tab(child: Text('Status'),),
// // // // // // // // //
// // // // // // // // //                   ]),
// // // // // // // // //
// // // // // // // // //             ),
// // // // // // // // //           ),
// // // // // // // // //         ));
// // // // // // // // //   }
// // // // // // // // //
// // // // // // // // //
// // // // // // // // //
// // // // // // // // //
// // // // // // // // //
// // // // // // // // // //
// // // // // // // // // //
// // // // // // // // // // class HomeScreen extends StatefulWidget {
// // // // // // // // // //   const HomeScreen({super.key});
// // // // // // // // // //
// // // // // // // // // //   @override
// // // // // // // // // //   State<HomeScreen> createState() => _HomeScreenState();
// // // // // // // // // // }
// // // // // // // // // //
// // // // // // // // // // class _HomeScreenState extends State<HomeScreen> {
// // // // // // // // // //   @override
// // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // //     return SafeArea(
// // // // // // // // // //       child: Scaffold(
// // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // //
// // // // // // // // // //         appBar: AppBar(
// // // // // // // // // //
// // // // // // // // // //           actions: [
// // // // // // // // // //             Column(
// // // // // // // // // //       crossAxisAlignment: CrossAxisAlignment.center,
// // // // // // // // // //               mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // //
// // // // // // // // // //               children: [
// // // // // // // // // //
// // // // // // // // // //                 Center(
// // // // // // // // // //                   child:  Badge(
// // // // // // // // // //                     child: Icon(Icons.settings),
// // // // // // // // // //                     smallSize: 9,
// // // // // // // // // //                   )
// // // // // // // // // //                 ),
// // // // // // // // // //
// // // // // // // // // //
// // // // // // // // // //
// // // // // // // // // //               ],
// // // // // // // // // //             )
// // // // // // // // // //
// // // // // // // // // //
// // // // // // // // // //           ],
// // // // // // // // // //
// // // // // // // // // //
// // // // // // // // // //           title: Text("Hii"),
// // // // // // // // // //         ),
// // // // // // // // // //         body: Column(
// // // // // // // // // //           children: [
// // // // // // // // // //             ReadMoreText('hghhdjkshddkjjdskslajkjdsasljaklsjdalsjdlasjdlasjdsjasklsjdsklsjkadaksjdksjdkslsjdskxnzxklsxkxlsalkjdakksljkdklsjkdkslajkdjksajdkskmdnndskdjkhcjbjkvcuhhuweejkdsjds;dduhchdudhcdcc;khdhhdjjkdkkjjjjjcjdbb bdjuwe;cjkjkcdjjkkksjcbdjkckjdkhan kha kvvs k;han ka khan khan ',
// // // // // // // // // //                 trimLines: 2,
// // // // // // // // // //               trimMode: TrimMode.Line,
// // // // // // // // // //
// // // // // // // // // //               trimExpandedText: 'showless',
// // // // // // // // // //
// // // // // // // // // //                 trimCollapsedText: 'Showmore',
// // // // // // // // // //                 moreStyle: TextStyle(
// // // // // // // // // //                   color: Colors.red,
// // // // // // // // // //                 ),
// // // // // // // // // //                 style: TextStyle(
// // // // // // // // // //
// // // // // // // // // //               color: Colors.grey,
// // // // // // // // // //
// // // // // // // // // //             ),),
// // // // // // // // // //
// // // // // // // // // //             Center(
// // // // // // // // // //               child: Badge(
// // // // // // // // // //                 backgroundColor: Colors.teal,
// // // // // // // // // //
// // // // // // // // // //               child: Icon(Icons.shopping_bag_rounded),
// // // // // // // // // //             ),
// // // // // // // // // //             ),],
// // // // // // // // // //         ),
// // // // // // // // // //
// // // // // // // // // //       ),
// // // // // // // // // //
// // // // // // // // // //
// // // // // // // // // //     );
// // // // // // // // // //   }
// // // // // // // // // // }
// // // // // // // // // //
// // // // // // // // // //
// // // // // // // // // //
// // // // // // // // // //
// // // // // // // // // // // class HomeScreen extends StatefulWidget {
// // // // // // // // // // //   const HomeScreen({super.key});
// // // // // // // // // // //
// // // // // // // // // // //   @override
// // // // // // // // // // //   State<HomeScreen> createState() => _HomeScreenState();
// // // // // // // // // // // }
// // // // // // // // // // //
// // // // // // // // // // // class _HomeScreenState extends State<HomeScreen> {
// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     return DefaultTabController(
// // // // // // // // // // //         length: 4, child: Scaffold(
// // // // // // // // // // //       backgroundColor: Colors.cyanAccent,
// // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // //
// // // // // // // // // // //         actions: [
// // // // // // // // // // //           Icon(Icons.search),
// // // // // // // // // // //
// // // // // // // // // // //
// // // // // // // // // // //           PopupMenuButton(
// // // // // // // // // // //               itemBuilder: (context)=>[
// // // // // // // // // // //                 PopupMenuItem(child: Text('new group'),),
// // // // // // // // // // //                 PopupMenuItem(child: Text('Settings')),
// // // // // // // // // // //                 PopupMenuItem(child: Text('Log-Out')),
// // // // // // // // // // //               ],
// // // // // // // // // // //           ),
// // // // // // // // // // //
// // // // // // // // // // //         ],
// // // // // // // // // // //         backgroundColor: Colors.yellowAccent,
// // // // // // // // // // //         title: Text("Whatsapp"),
// // // // // // // // // // //         bottom: TabBar(
// // // // // // // // // // //             tabs: [
// // // // // // // // // // //             Tab(child: Icon(Icons.camera_alt_outlined),),
// // // // // // // // // // //               Tab(child: Text('Chats'),),
// // // // // // // // // // //               Tab(child: Text('Calls'),),
// // // // // // // // // // //               Tab(child: Text('Status'),),
// // // // // // // // // // //         ],),
// // // // // // // // // // //       ),
// // // // // // // // // // //       body: TabBarView(
// // // // // // // // // // //           children: [
// // // // // // // // // // //             Text('camera'),
// // // // // // // // // // //
// // // // // // // // // // //             ListView.builder(
// // // // // // // // // // //                 itemBuilder: (context, index)
// // // // // // // // // // //             {
// // // // // // // // // // //               return ListTile(
// // // // // // // // // // //                 leading:CircleAvatar(
// // // // // // // // // // //                   child: Icon(Icons.account_circle_sharp),
// // // // // // // // // // //                 ),
// // // // // // // // // // //                 title: Text('Name'),
// // // // // // // // // // //                 subtitle: Text('please save it properly'),
// // // // // // // // // // //                 trailing: Text('9:00 pm'),
// // // // // // // // // // //
// // // // // // // // // // //
// // // // // // // // // // //               );
// // // // // // // // // // //             }),
// // // // // // // // // // //             // Text('Chats'),
// // // // // // // // // // //             Text('Calls'),
// // // // // // // // // // //             Text('status'),
// // // // // // // // // // //
// // // // // // // // // // //           ])
// // // // // // // // // // //
// // // // // // // // // // //     ),);
// // // // // // // // // // //   }
// // // // // // // // // // // }
// // // // // // // // // // //
// // // // // // // // // // //
// // // // // // // // // // // //
// // // // // // // // // // // //  class HomeScreen extends StatefulWidget {
// // // // // // // // // // // //    const HomeScreen({super.key});
// // // // // // // // // // // //
// // // // // // // // // // // //    @override
// // // // // // // // // // // //    State<HomeScreen> createState() => _HomeScreenState();
// // // // // // // // // // // //  }
// // // // // // // // // // // //
// // // // // // // // // // // //  class _HomeScreenState extends State<HomeScreen> {
// // // // // // // // // // // //    @override
// // // // // // // // // // // //    Widget build(BuildContext context) {
// // // // // // // // // // // //      return DefaultTabCoantroller(
// // // // // // // // // // // //          length: 4, child: Scaffold(
// // // // // // // // // // // // backgroundColor: Colors.cyanAccent,
// // // // // // // // // // // //        appBar: AppBar(
// // // // // // // // // // // //          actions: [
// // // // // // // // // // // //            Icon(FontAwesomeIcons.searchengin),
// // // // // // // // // // // //            PopupMenuButton(
// // // // // // // // // // // //                child: Icon(Icons.more_vert_outlined),
// // // // // // // // // // // //
// // // // // // // // // // // //                itemBuilder: (context)=>[
// // // // // // // // // // // //                  PopupMenuItem(
// // // // // // // // // // // //
// // // // // // // // // // // //                      child: Text('New-group'),),
// // // // // // // // // // // //
// // // // // // // // // // // //                  PopupMenuItem(
// // // // // // // // // // // //                    child: Text('settings'),
// // // // // // // // // // // //                  ),
// // // // // // // // // // // //                  PopupMenuItem(
// // // // // // // // // // // //                    child: Text('Log-Out'),),
// // // // // // // // // // // //                ],
// // // // // // // // // // // //            ),
// // // // // // // // // // // //
// // // // // // // // // // // //          ],
// // // // // // // // // // // //          title: Text('whatsapp'),
// // // // // // // // // // // //          backgroundColor: Colors.white,
// // // // // // // // // // // //          bottom: TabBar(
// // // // // // // // // // // //              tabs: [
// // // // // // // // // // // //                Tab(child: Icon(Icons.camera_alt),),
// // // // // // // // // // // //                Tab(child: Text('Chats'),),
// // // // // // // // // // // //                Tab(child: Text('Calls'),),
// // // // // // // // // // // //                Tab(child: Text('Status'),),
// // // // // // // // // // // //
// // // // // // // // // // // //              ]),
// // // // // // // // // // // //        ),
// // // // // // // // // // // //        body: TabBarView(
// // // // // // // // // // // //            children: [
// // // // // // // // // // // //             ListView.builder(
// // // // // // // // // // // //               itemCount: 1,
// // // // // // // // // // // //                 itemBuilder: (context, index)
// // // // // // // // // // // //             {
// // // // // // // // // // // //               return ListTile(
// // // // // // // // // // // //                 leading: CircleAvatar(
// // // // // // // // // // // //                   child: Icon(Icons.camera_alt_sharp),
// // // // // // // // // // // //
// // // // // // // // // // // //                 ),
// // // // // // // // // // // //                 title: Text('Camera'),
// // // // // // // // // // // //                 subtitle: Text('whatsapp camera'),
// // // // // // // // // // // //                 trailing: Icon(Icons.camera_alt_outlined,size: 15,),
// // // // // // // // // // // //               );
// // // // // // // // // // // //             }),
// // // // // // // // // // // //
// // // // // // // // // // // //              ListView.builder(
// // // // // // // // // // // //                itemCount: 23,
// // // // // // // // // // // //                  itemBuilder: (context, index)
// // // // // // // // // // // //              {
// // // // // // // // // // // //                return ListTile(
// // // // // // // // // // // //                  leading: CircleAvatar(
// // // // // // // // // // // //                    child: Icon(Icons.account_circle_sharp),
// // // // // // // // // // // //
// // // // // // // // // // // //                  ),
// // // // // // // // // // // //                  title: Text('Name'),
// // // // // // // // // // // //                  subtitle: Text('click to save properly'),
// // // // // // // // // // // //                  trailing: Text('9:00 pm'),
// // // // // // // // // // // //                );
// // // // // // // // // // // //              }),
// // // // // // // // // // // //              Text('Calls'),
// // // // // // // // // // // //              Text('Status'),
// // // // // // // // // // // //            ]),
// // // // // // // // // // // //      ));
// // // // // // // // // // // //    }
// // // // // // // // // // // //  }
// // // // // // // // // // // //
// // // // // // // // // // // //
// // // // // // // // // // // //
// // // // // // // // // // // //
// // // // // // // // // // // // // *************************Whatsapp U-I************************************
// // // // // // // // // // // // // class HomeScreen extends StatefulWidget {
// // // // // // // // // // // // //   const HomeScreen({super.key});
// // // // // // // // // // // // //
// // // // // // // // // // // // //   @override
// // // // // // // // // // // // //   State<HomeScreen> createState() => _HomeScreenState();
// // // // // // // // // // // // // }
// // // // // // // // // // // // //
// // // // // // // // // // // // // class _HomeScreenState extends State<HomeScreen> {
// // // // // // // // // // // // //   @override
// // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // //     return DefaultTabController(
// // // // // // // // // // // // //         length: 4,
// // // // // // // // // // // // //         child: Scaffold(
// // // // // // // // // // // // //           backgroundColor: Colors.white,
// // // // // // // // // // // // //           appBar: AppBar(
// // // // // // // // // // // // //             backgroundColor: Colors.teal,
// // // // // // // // // // // // //             title: Text('whatsapp'),
// // // // // // // // // // // // //             centerTitle: false,
// // // // // // // // // // // // //             actions: [
// // // // // // // // // // // // //               Icon(Icons.search),
// // // // // // // // // // // // //               SizedBox(width: 12),
// // // // // // // // // // // // //               PopupMenuButton(
// // // // // // // // // // // // //                   child: Icon(Icons.more_vert_outlined),
// // // // // // // // // // // // //                   itemBuilder: (context) => [
// // // // // // // // // // // // //                         PopupMenuItem(
// // // // // // // // // // // // //                           child: Text('New-group'),
// // // // // // // // // // // // //                         ),
// // // // // // // // // // // // //                         PopupMenuItem(
// // // // // // // // // // // // //                           child: Text('Setting'),
// // // // // // // // // // // // //                         ),
// // // // // // // // // // // // //                       ]),
// // // // // // // // // // // // //               PopupMenuItem(child: Text('Log-Out'))
// // // // // // // // // // // // //             ],
// // // // // // // // // // // // //             bottom: TabBar(
// // // // // // // // // // // // //               tabs: [
// // // // // // // // // // // // //                 Tab(
// // // // // // // // // // // // //                   child: Icon(Icons.camera_alt_outlined),
// // // // // // // // // // // // //                 ),
// // // // // // // // // // // // //                 Tab(
// // // // // // // // // // // // //                   child: Text('Chats'),
// // // // // // // // // // // // //                 ),
// // // // // // // // // // // // //                 Tab(
// // // // // // // // // // // // //                   child: Text('Calls'),
// // // // // // // // // // // // //                 ),
// // // // // // // // // // // // //                 Tab(
// // // // // // // // // // // // //                   child: Text('Status'),
// // // // // // // // // // // // //                 ),
// // // // // // // // // // // // //               ],
// // // // // // // // // // // // //             ),
// // // // // // // // // // // // //           ),
// // // // // // // // // // // // //           body: TabBarView(children: [
// // // // // // // // // // // // //             ListView.builder(itemBuilder: (context, index) {
// // // // // // // // // // // // //               return ListTile(
// // // // // // // // // // // // //                 leading: CircleAvatar(
// // // // // // // // // // // // //                   child: Icon(
// // // // // // // // // // // // //                     Icons.camera_alt,
// // // // // // // // // // // // //                     size: 16,
// // // // // // // // // // // // //                   ),
// // // // // // // // // // // // //                 ),
// // // // // // // // // // // // //                 title: Text('Camera'),
// // // // // // // // // // // // //                 subtitle: Text('Click to open camera'),
// // // // // // // // // // // // //               );
// // // // // // // // // // // // //             }),
// // // // // // // // // // // // //             ListView.builder(itemBuilder: (context, index) {
// // // // // // // // // // // // //               return ListTile(
// // // // // // // // // // // // //                 leading: CircleAvatar(
// // // // // // // // // // // // //                   child: Icon(Icons.account_circle_rounded),
// // // // // // // // // // // // //                 ),
// // // // // // // // // // // // //                 title: Text('Name'),
// // // // // // // // // // // // //                 subtitle: Text('Eccedentisiast'),
// // // // // // // // // // // // //                 trailing: Text('9:00 pm'),
// // // // // // // // // // // // //               );
// // // // // // // // // // // // //             }),
// // // // // // // // // // // // //             ListView.builder(itemBuilder: (context, index) {
// // // // // // // // // // // // //               return ListTile(
// // // // // // // // // // // // //                 leading: CircleAvatar(
// // // // // // // // // // // // //                   child: Icon(Icons.phone_outlined),
// // // // // // // // // // // // //                 ),
// // // // // // // // // // // // //                 title: Text('mr Unknown'),
// // // // // // // // // // // // //                 subtitle:
// // // // // // // // // // // // //                     Text(index / 2 == 0 ? 'incoming calls' : 'outgoing calls'),
// // // // // // // // // // // // //                 trailing:
// // // // // // // // // // // // //                     Text(index / 2 == 0 ? 'Missed calls' : 'receive calls'),
// // // // // // // // // // // // //               );
// // // // // // // // // // // // //             }),
// // // // // // // // // // // // //             ListView.builder(itemBuilder: (context, index) {
// // // // // // // // // // // // //               return ListTile(
// // // // // // // // // // // // //                 leading: CircleAvatar(
// // // // // // // // // // // // //                   child: Icon(
// // // // // // // // // // // // //                     Icons.account_circle,
// // // // // // // // // // // // //                     size: 13,
// // // // // // // // // // // // //                     color: Colors.blueGrey,
// // // // // // // // // // // // //                   ),
// // // // // // // // // // // // //                 ),
// // // // // // // // // // // // //                 title: Text(index / 2 == 0 ? 'boy-status' : 'Girl-status'),
// // // // // // // // // // // // //                 subtitle: Text('click to  open status'),
// // // // // // // // // // // // //                 trailing: Text('00:00 am'),
// // // // // // // // // // // // //               );
// // // // // // // // // // // // //             })
// // // // // // // // // // // // //           ]),
// // // // // // // // // // // // //         ));
// // // // // // // // // // // // //   }
// // // // // // // // // // // // // }
// // // // // // // // // // // //
// // // // // // // // // // // // //
// // // // // // // // // // // // // class HomeScreen extends StatefulWidget {
// // // // // // // // // // // // //   const HomeScreen({super.key});
// // // // // // // // // // // // //
// // // // // // // // // // // // //   @override
// // // // // // // // // // // // //   State<HomeScreen> createState() => _HomeScreenState();
// // // // // // // // // // // // // }
// // // // // // // // // // // // //
// // // // // // // // // // // // // class _HomeScreenState extends State<HomeScreen> {
// // // // // // // // // // // // //   @override
// // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // //     return DefaultTabController(
// // // // // // // // // // // // //       length: 4,
// // // // // // // // // // // // //       child: Scaffold(
// // // // // // // // // // // // //         backgroundColor: Colors.cyanAccent,
// // // // // // // // // // // // //         appBar: AppBar(
// // // // // // // // // // // // //           actions: [
// // // // // // // // // // // // //             Icon(Icons.search),
// // // // // // // // // // // // //             SizedBox(width: 10),
// // // // // // // // // // // // //             PopupMenuButton(
// // // // // // // // // // // // //               child: Icon(Icons.more_vert_outlined),
// // // // // // // // // // // // //               itemBuilder: (context) => [
// // // // // // // // // // // // //                 PopupMenuItem(
// // // // // // // // // // // // //                   child: Text('New group'),
// // // // // // // // // // // // //                 ),
// // // // // // // // // // // // //                 PopupMenuItem(
// // // // // // // // // // // // //                   child: Text('Settings'),
// // // // // // // // // // // // //                 ),
// // // // // // // // // // // // //                 PopupMenuItem(
// // // // // // // // // // // // //                   child: Text('Log-Out'),
// // // // // // // // // // // // //                 ),
// // // // // // // // // // // // //               ],
// // // // // // // // // // // // //             ),
// // // // // // // // // // // // //           ],
// // // // // // // // // // // // //           title: Text('WhatsApp'),
// // // // // // // // // // // // //           centerTitle: false,
// // // // // // // // // // // // //           backgroundColor: Colors.teal,
// // // // // // // // // // // // //           bottom: TabBar(
// // // // // // // // // // // // //             tabs: [
// // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // //                 child: Icon(Icons.camera_alt),
// // // // // // // // // // // // //               ),
// // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // //                 child: Text('Chats'),
// // // // // // // // // // // // //               ),
// // // // // // // // // // // // //               Tab(child: Text('Calls')),
// // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // //                 child: Text('Status'),
// // // // // // // // // // // // //               ),
// // // // // // // // // // // // //             ],
// // // // // // // // // // // // //           ),
// // // // // // // // // // // // //         ),
// // // // // // // // // // // // //         body: TabBarView(
// // // // // // // // // // // // //           children: [
// // // // // // // // // // // // //             ListView.builder(
// // // // // // // // // // // // //                 itemBuilder: (context, index)
// // // // // // // // // // // // //             {
// // // // // // // // // // // // //               return ListTile(
// // // // // // // // // // // // //               leading: CircleAvatar(
// // // // // // // // // // // // //                 child: Icon(Icons.camera_alt_outlined),
// // // // // // // // // // // // //
// // // // // // // // // // // // //               ),
// // // // // // // // // // // // //                 title: Text('Camera'),
// // // // // // // // // // // // //                 subtitle: Text('Click to open Camera '),
// // // // // // // // // // // // //               );
// // // // // // // // // // // // //             }
// // // // // // // // // // // // //             ),
// // // // // // // // // // // // //
// // // // // // // // // // // // //            //
// // // // // // // // // // // // //             // Chats Tab - ListView.builder
// // // // // // // // // // // // //             ListView.builder(
// // // // // // // // // // // // //               itemCount: 10, // Number of chat items (adjust as needed)
// // // // // // // // // // // // //               itemBuilder: (context, index) {
// // // // // // // // // // // // //                 return ListTile(
// // // // // // // // // // // // //                   leading: CircleAvatar(
// // // // // // // // // // // // //                     child: Icon(Icons.account_circle_rounded, size: 16),
// // // // // // // // // // // // //                   ),
// // // // // // // // // // // // //                   title: Text('Unknown'),
// // // // // // // // // // // // //                   subtitle: Text('Please add your account name'),
// // // // // // // // // // // // //                   trailing: Text('9:00 pm'),
// // // // // // // // // // // // //                 );
// // // // // // // // // // // // //               },
// // // // // // // // // // // // //             ),
// // // // // // // // // // // // //             // Calls Tab - ListView.builder
// // // // // // // // // // // // //             ListView.builder(
// // // // // // // // // // // // //
// // // // // // // // // // // // //               itemCount: 10, // Number of call items (adjust as needed)
// // // // // // // // // // // // //               itemBuilder: (context, index) {
// // // // // // // // // // // // //                 return ListTile(
// // // // // // // // // // // // //
// // // // // // // // // // // // //                   leading: CircleAvatar(
// // // // // // // // // // // // //                     child: Icon(Icons.account_circle_rounded, size: 16),
// // // // // // // // // // // // //                   ),
// // // // // // // // // // // // //                   title: Text('Unknown'),
// // // // // // // // // // // // //                   subtitle: Text('Please add your account name'),
// // // // // // // // // // // // //                   trailing: Text('9:00 pm'),
// // // // // // // // // // // // //                 );
// // // // // // // // // // // // //               },
// // // // // // // // // // // // //             ),
// // // // // // // // // // // // //             Text('Status'),
// // // // // // // // // // // // //           ],
// // // // // // // // // // // // //         ),
// // // // // // // // // // // // //       ),
// // // // // // // // // // // // //     );
// // // // // // // // // // // // //   }
// // // // // // // // // // // // // }
// // // // // // // // // // // // //
// // // // // // // // // // // // // // Text('chats'),
// // // // // // // // // // // // //             // ListView.builder(
// // // // // // // // // // // // //             //   itemCount: 10, // Number of call items (adjust as needed)
// // // // // // // // // // // // //             //   itemBuilder: (context, index) {
// // // // // // // // // // // // //             //     return ListTile(
// // // // // // // // // // // // //             //       leading: CircleAvatar(
// // // // // // // // // // // // //             //         child: Icon(Icons.account_circle_rounded, size: 16),
// // // // // // // // // // // // //             //       ),
// // // // // // // // // // // // //             //       title: Text('Unknown'),
// // // // // // // // // // // // //             //       subtitle: Text('Please add your account name'),
// // // // // // // // // // // // //             //       trailing: Text('9:00 pm'),
// // // // // // // // // // // // //             //     );
// // // // // // // // // // // // //             //   },
// // // // // // // // // // // // //             // ),
// // // // // // // // // // // // //             // Text('Calls'),
// // // // // // // // // // // // //             // ListView.builder(
// // // // // // // // // // // // //             //   itemCount: 10, // Number of call items (adjust as needed)
// // // // // // // // // // // // //             //   itemBuilder: (context, index) {
// // // // // // // // // // // // //             //     return ListTile(
// // // // // // // // // // // // //             //       leading: CircleAvatar(
// // // // // // // // // // // // //             //         child: Icon(Icons.account_circle_rounded, size: 16),
// // // // // // // // // // // // //             //       ),
// // // // // // // // // // // // //             //       title: Text('Unknown'),
// // // // // // // // // // // // //             //       subtitle: Text('Please add your account name'),
// // // // // // // // // // // // //             //       trailing: Text('9:00 pm'),
// // // // // // // // // // // // //             //     );
// // // // // // // // // // // // //             //   },
// // // // // // // // // // // // //             // ),
// // // // // // // // // // // // //
// // // // // // // // // // // // //
// // // // // // // // // // // // // // class HomeScreen extends StatefulWidget {
// // // // // // // // // // // // // //   const HomeScreen({super.key});
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // //   State<HomeScreen> createState() => _HomeScreenState();
// // // // // // // // // // // // // // }
// // // // // // // // // // // // // //
// // // // // // // // // // // // // // class _HomeScreenState extends State<HomeScreen> {
// // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // //     return DefaultTabController(
// // // // // // // // // // // // // //         length: 4, child: Scaffold(
// // // // // // // // // // // // // //       backgroundColor: Colors.white,
// // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // //         actions: [
// // // // // // // // // // // // // //           Icon(Icons.search),
// // // // // // // // // // // // // //           SizedBox(width: 12),
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //           PopupMenuButton(
// // // // // // // // // // // // // //               itemBuilder: (context)=>[
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //                 PopupMenuItem(
// // // // // // // // // // // // // //                     child: Text('New group'),),
// // // // // // // // // // // // // //                 PopupMenuItem(child: Text('Settings')),
// // // // // // // // // // // // // //                 PopupMenuItem(child: Text('LogOut'))
// // // // // // // // // // // // // //               ],
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //           ),
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //           //Icon(Icons.more_vert_outlined),
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //         ],
// // // // // // // // // // // // // //         backgroundColor: Colors.lightGreenAccent,
// // // // // // // // // // // // // //         title: Text('Whatsapp'),
// // // // // // // // // // // // // //         centerTitle: false,
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //         bottom: TabBar(
// // // // // // // // // // // // // //             tabs: [
// // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // //                 child: Icon(Icons.camera_alt),
// // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // //                 child: Text('Chats'),
// // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // //                 child: Text('Calls'),
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // //                 child: Text('Status'),
// // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // //             ],
// // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // //       body: TabBarView(
// // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // // Text('Chats'),
// // // // // // // // // // // // // //             ListView.builder(
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //                 itemCount: 33,
// // // // // // // // // // // // // //                 itemBuilder: (context, index)
// // // // // // // // // // // // // //                 {
// // // // // // // // // // // // // //                   return ListTile(
// // // // // // // // // // // // // //                     leading: CircleAvatar(
// // // // // // // // // // // // // //                       child: Icon(Icons.account_circle, size: 16,),
// // // // // // // // // // // // // //                     ),
// // // // // // // // // // // // // //                     title: Text('MaanKhan'),
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //                     subtitle: Text('Eccedentisiast'),
// // // // // // // // // // // // // //                     trailing: Text('3:00 pm'),
// // // // // // // // // // // // // //                   );
// // // // // // // // // // // // // //                 },
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // //
// // // // // // // // // // // // // // Text('status'),
// // // // // // // // // // // // // // ListView.builder(
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //     itemBuilder: (context, index)
// // // // // // // // // // // // // //         {
// // // // // // // // // // // // // //           return ListTile(
// // // // // // // // // // // // // //             leading: CircleAvatar(
// // // // // // // // // // // // // //               child: Icon(Icons.account_circle_sharp),
// // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // //             title: Text('Unknown'),
// // // // // // // // // // // // // //             subtitle: Text('Missed voice call'),
// // // // // // // // // // // // // //           );
// // // // // // // // // // // // // //         }
// // // // // // // // // // // // // //
// // // // // // // // // // // // // // ),
// // // // // // // // // // // // // //             TabBarView(
// // // // // // // // // // // // // //                 children: [
// // // // // // // // // // // // // //                   Text("Calls"),
// // // // // // // // // // // // // //                   ListView.builder(
// // // // // // // // // // // // // //                       itemBuilder: (context, Index)
// // // // // // // // // // // // // //                           {
// // // // // // // // // // // // // //                             return
// // // // // // // // // // // // // //                                  ListTile(
// // // // // // // // // // // // // //                                    leading: CircleAvatar(
// // // // // // // // // // // // // //                                      child: Icon(Icons.phone),
// // // // // // // // // // // // // //                                    ),
// // // // // // // // // // // // // //                                    title: Text('Calls'),
// // // // // // // // // // // // // //                                    subtitle: Text('<Missed  voice calls>'),
// // // // // // // // // // // // // //                                  );
// // // // // // // // // // // // // //                           }
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //                   )
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //                 ])
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //
// // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // //     ));
// // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // }
// // // // // // // // // // // // // //
// // // // // // // // // // // // // // // class HomeScreen extends StatefulWidget {
// // // // // // // // // // // // // // //   const HomeScreen({super.key});
// // // // // // // // // // // // // // //
// // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // //   State<HomeScreen> createState() => _HomeScreenState();
// // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // class _HomeScreenState extends State<HomeScreen> {
// // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // //     return DefaultTabController(
// // // // // // // // // // // // // // //         length: 4, child: Scaffold(
// // // // // // // // // // // // // // //       backgroundColor: Colors.white,
// // // // // // // // // // // // // // //
// // // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // // //         backgroundColor: Colors.teal,
// // // // // // // // // // // // // // //         title: Text('Whatsapp'),
// // // // // // // // // // // // // // //         centerTitle: false,
// // // // // // // // // // // // // // //         actions: [
// // // // // // // // // // // // // // //           Icon(Icons.search),
// // // // // // // // // // // // // // //           SizedBox(width: 10),
// // // // // // // // // // // // // // //
// // // // // // // // // // // // // // //           PopupMenuButton(
// // // // // // // // // // // // // // //               itemBuilder: (context)=>[
// // // // // // // // // // // // // // //           PopupMenuItem(
// // // // // // // // // // // // // // //             child:  Text('New-Group'),),
// // // // // // // // // // // // // // //           PopupMenuItem(
// // // // // // // // // // // // // // //               child: Text('settings'),),
// // // // // // // // // // // // // // //                 PopupMenuItem(
// // // // // // // // // // // // // // //                     child: Text('Log-Out'),),
// // // // // // // // // // // // // // //           ],),
// // // // // // // // // // // // // // //         ],
// // // // // // // // // // // // // // //
// // // // // // // // // // // // // // //
// // // // // // // // // // // // // // //         bottom: TabBar(
// // // // // // // // // // // // // // //             tabs: [
// // // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // // //                 child: Icon(Icons.camera_alt_outlined),
// // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // // //                 child: Text('Text'),
// // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // // //                 child: Text('Calls'),
// // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // // //                 child: Text('Status'),
// // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // //             ]),
// // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // //       body: TabBarView(
// // // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // // //             Text('Camera'),
// // // // // // // // // // // // // // //             Text('Text'),
// // // // // // // // // // // // // // //             ListView.builder(
// // // // // // // // // // // // // // //               itemCount: 33,
// // // // // // // // // // // // // // //                 itemBuilder: (context, index)
// // // // // // // // // // // // // // //             {
// // // // // // // // // // // // // // //               return ListTile(
// // // // // // // // // // // // // // //                 leading: CircleAvatar(
// // // // // // // // // // // // // // //                   backgroundImage:  AssetImage('assets/logo.png'),
// // // // // // // // // // // // // // //                 ),
// // // // // // // // // // // // // // //                 title: Text('Unknown'),
// // // // // // // // // // // // // // //                 subtitle: Text('add account name') ,
// // // // // // // // // // // // // // //                 trailing: Text('9:00 pm'),
// // // // // // // // // // // // // // //               );
// // // // // // // // // // // // // // //             }),
// // // // // // // // // // // // // // //              Text('Calls'),
// // // // // // // // // // // // // // //             ListView.builder(
// // // // // // // // // // // // // // //                 itemBuilder: (context, index)
// // // // // // // // // // // // // // //             {
// // // // // // // // // // // // // // //               return ListTile(
// // // // // // // // // // // // // // //                 leading: CircleAvatar(
// // // // // // // // // // // // // // //                   backgroundImage: AssetImage('assets/dp1.jpg'),
// // // // // // // // // // // // // // //                 ),
// // // // // // // // // // // // // // //                 title:Text('Missed calls'),
// // // // // // // // // // // // // // //                 subtitle: Icon(Icons.call_end),
// // // // // // // // // // // // // // //                 trailing: Text(index/2==0 ? 'Audio call' : 'Video call'),
// // // // // // // // // // // // // // //
// // // // // // // // // // // // // // //               );
// // // // // // // // // // // // // // //             }),
// // // // // // // // // // // // // // //             Text('Status'),
// // // // // // // // // // // // // // //             ListView.builder(
// // // // // // // // // // // // // // //                 itemCount: 33,
// // // // // // // // // // // // // // //                 itemBuilder: (context, index)
// // // // // // // // // // // // // // //                 {
// // // // // // // // // // // // // // //                   return ListTile(
// // // // // // // // // // // // // // //                     leading: CircleAvatar(
// // // // // // // // // // // // // // //                       backgroundImage:  AssetImage('assets/hello.jpg'),
// // // // // // // // // // // // // // //                     ),
// // // // // // // // // // // // // // //                     title: Text('New updates'),
// // // // // // // // // // // // // // //                     subtitle: Text('Status') ,
// // // // // // // // // // // // // // //                     trailing: Text('9:00 pm'),
// // // // // // // // // // // // // // //                   );
// // // // // // // // // // // // // // //                 }),
// // // // // // // // // // // // // // //           ],),
// // // // // // // // // // // // // // //
// // // // // // // // // // // // // // //     ));
// // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // class HomeScreen extends StatefulWidget {
// // // // // // // // // // // // // // // //   const HomeScreen({super.key});
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // //   State<HomeScreen> createState() => _HomeScreenState();
// // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // class _HomeScreenState extends State<HomeScreen> {
// // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // //     return DefaultTabController(
// // // // // // // // // // // // // // // //         length: 4, child: Scaffold(
// // // // // // // // // // // // // // // //       backgroundColor: Colors.cyanAccent,
// // // // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // // // //         actions: [
// // // // // // // // // // // // // // // //           SizedBox(width: 10),
// // // // // // // // // // // // // // // //           Icon(Icons.search),
// // // // // // // // // // // // // // // //           SizedBox(width: 10),
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //           PopupMenuButton(
// // // // // // // // // // // // // // // //             child: Icon(Icons.more_vert_outlined),
// // // // // // // // // // // // // // // //               itemBuilder: (context)=>[
// // // // // // // // // // // // // // // //           PopupMenuItem(
// // // // // // // // // // // // // // // //               child: Text('New group'),),
// // // // // // // // // // // // // // // //                 PopupMenuItem(
// // // // // // // // // // // // // // // //                   child: Text('settings'),),
// // // // // // // // // // // // // // // //                 PopupMenuItem(
// // // // // // // // // // // // // // // //                   child: Text('LogOut'),),
// // // // // // // // // // // // // // // //           ],)
// // // // // // // // // // // // // // // //     ],
// // // // // // // // // // // // // // // //         backgroundColor: Colors.yellowAccent,
// // // // // // // // // // // // // // // //         title: Text('Whatsapp'),
// // // // // // // // // // // // // // // //         centerTitle: false,
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //         bottom: TabBar(
// // // // // // // // // // // // // // // //             tabs: [
// // // // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // // // //                 child: Icon(Icons.camera_alt_outlined),
// // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // // // //                 child: Text("Text"),
// // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // // // //                 child: Text('Calls'),
// // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // // // //                 child: Text('Status'),
// // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // //             ]
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // //       body: TabBarView(
// // // // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // // // //             Text('Camera'),
// // // // // // // // // // // // // // // //             Text('Texts'),
// // // // // // // // // // // // // // // //             ListView.builder(
// // // // // // // // // // // // // // // //               itemCount: 22,
// // // // // // // // // // // // // // // //                 itemBuilder: (context, index)
// // // // // // // // // // // // // // // //             {
// // // // // // // // // // // // // // // //               return ListTile(
// // // // // // // // // // // // // // // //                 leading: CircleAvatar(
// // // // // // // // // // // // // // // //                   backgroundImage: AssetImage('assets/logo.png'),
// // // // // // // // // // // // // // // //                 ),
// // // // // // // // // // // // // // // //                 title: Text("maan"),
// // // // // // // // // // // // // // // //                 subtitle: Text("MaantechWebWide"),
// // // // // // // // // // // // // // // //                 trailing: Text("8:00 pm"),
// // // // // // // // // // // // // // // //               );
// // // // // // // // // // // // // // // //             },
// // // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //             Text('Calls'),
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //             ListView.builder(
// // // // // // // // // // // // // // // //                 itemBuilder: (context, index)
// // // // // // // // // // // // // // // //             {
// // // // // // // // // // // // // // // //               return
// // // // // // // // // // // // // // // //                   ListTile(
// // // // // // // // // // // // // // // //                     title: Text('Maan'),
// // // // // // // // // // // // // // // //                       subtitle: Text(index/2==0 ? 'Missed call' : 'receive Call'),
// // // // // // // // // // // // // // // //                     trailing: Text(index/2==0? 'Night time' : 'Day-Time'),
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //                   );
// // // // // // // // // // // // // // // //             }),
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // //             Text('Statuses'),
// // // // // // // // // // // // // // // //           ]),
// // // // // // // // // // // // // // // //     ));
// // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // class HomeScreen extends StatefulWidget {
// // // // // // // // // // // // // // // // //   const HomeScreen({super.key});
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // //   State<HomeScreen> createState() => _HomeScreenState();
// // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // class _HomeScreenState extends State<HomeScreen> {
// // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // // //     return DefaultTabController(
// // // // // // // // // // // // // // // // //         length: 4, child: Scaffold(
// // // // // // // // // // // // // // // // //       backgroundColor: Colors.white,
// // // // // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //         actions: [
// // // // // // // // // // // // // // // // //           SizedBox(width: 12),
// // // // // // // // // // // // // // // // //           Icon(Icons.search),
// // // // // // // // // // // // // // // // //           SizedBox(width: 10),
// // // // // // // // // // // // // // // // //           PopupMenuButton(
// // // // // // // // // // // // // // // // //             child: Icon(Icons.more_vert_outlined),
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //             itemBuilder: (context)=> [
// // // // // // // // // // // // // // // // //               PopupMenuItem(
// // // // // // // // // // // // // // // // //               child: Text('New group'),
// // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // //             PopupMenuItem(
// // // // // // // // // // // // // // // // //                 child: Text("settings"),
// // // // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // // // //             PopupMenuItem(
// // // // // // // // // // // // // // // // //                 child: Text('Log-Out'),),], ),
// // // // // // // // // // // // // // // // //          ],
// // // // // // // // // // // // // // // // //         backgroundColor: Colors.teal,
// // // // // // // // // // // // // // // // //         title: Text('Whatsapp'),
// // // // // // // // // // // // // // // // //         centerTitle: false,
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //         bottom: TabBar(
// // // // // // // // // // // // // // // // //             tabs: [
// // // // // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // // // // //                 child: Icon(Icons.camera),
// // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // // // // //                 child: Text("Text"),
// // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // // // // //                 child: Text("Calls"),
// // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // // // // //                 child: Text("Status"),
// // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // //             ],),
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // //       body: TabBarView(
// // // // // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // // // // //             Text("camera"),
// // // // // // // // // // // // // // // // //             ListView.builder(
// // // // // // // // // // // // // // // // //               itemCount: 35,
// // // // // // // // // // // // // // // // //                 itemBuilder: (context, index)
// // // // // // // // // // // // // // // // //             {
// // // // // // // // // // // // // // // // //               return ListTile(
// // // // // // // // // // // // // // // // //                 leading: CircleAvatar(
// // // // // // // // // // // // // // // // //                   backgroundImage: AssetImage('assets/images.jpg'),
// // // // // // // // // // // // // // // // //                 ),
// // // // // // // // // // // // // // // // //                 title: Text("Maan"),
// // // // // // // // // // // // // // // // //                 subtitle: Text("please create yours account"),
// // // // // // // // // // // // // // // // //                 trailing: Text('9:00 pm'),
// // // // // // // // // // // // // // // // //               );
// // // // // // // // // // // // // // // // //             }),
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // //             Text('Texts'),
// // // // // // // // // // // // // // // // //             Text('Calls'),
// // // // // // // // // // // // // // // // //             Text('Statuses'),
// // // // // // // // // // // // // // // // //           ]),
// // // // // // // // // // // // // // // // //     ));
// // // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //   class HomeScreen extends StatefulWidget {
// // // // // // // // // // // // // // // // // //     const HomeScreen({super.key});
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //     @override
// // // // // // // // // // // // // // // // // //     State<HomeScreen> createState() => _HomeScreenState();
// // // // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //   class _HomeScreenState extends State<HomeScreen> {
// // // // // // // // // // // // // // // // // //     @override
// // // // // // // // // // // // // // // // // //     Widget build(BuildContext context) {
// // // // // // // // // // // // // // // // // //       return DefaultTabController(
// // // // // // // // // // // // // // // // // //           length: 4, child: Scaffold(
// // // // // // // // // // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // // // // // // // // // //         appBar: AppBar(
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //           actions: [
// // // // // // // // // // // // // // // // // //             SizedBox(width: 10),
// // // // // // // // // // // // // // // // // //             Icon(Icons.search),
// // // // // // // // // // // // // // // // // //             SizedBox(width: 10),
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //             PopupMenuButton(
// // // // // // // // // // // // // // // // // //                 itemBuilder: (context)=>
// // // // // // // // // // // // // // // // // //                 [
// // // // // // // // // // // // // // // // // //                   PopupMenuItem(
// // // // // // // // // // // // // // // // // //                     child: Text('New Group'),),
// // // // // // // // // // // // // // // // // //                   PopupMenuItem(
// // // // // // // // // // // // // // // // // //                     child: Text('Setting'),),
// // // // // // // // // // // // // // // // // //                   PopupMenuItem(
// // // // // // // // // // // // // // // // // //                     child: Text('Log-ouT'),),
// // // // // // // // // // // // // // // // // //                 ]),
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // // // // // //           backgroundColor: Colors.cyanAccent,
// // // // // // // // // // // // // // // // // //           title: Text('Whatsapp'),
// // // // // // // // // // // // // // // // // //           centerTitle: false,
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //         bottom: TabBar(
// // // // // // // // // // // // // // // // // //             tabs: [
// // // // // // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // // // // // //                 child: Icon(Icons.camera_alt_outlined),
// // // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // // // // // //                 child: Text("Chats"),
// // // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // // // // // //                 child: Text('Calls'),
// // // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // // // // // //                 child: Text('Status'),
// // // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //             ],),
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // //       body: TabBarView(
// // // // // // // // // // // // // // // // // //         children: [
// // // // // // // // // // // // // // // // // //           Text('Camera'),
// // // // // // // // // // // // // // // // // //           Text('Chats'),
// // // // // // // // // // // // // // // // // //           Text('Calls'),
// // // // // // // // // // // // // // // // // //           Text('Status')
// // // // // // // // // // // // // // // // // //         ],),
// // // // // // // // // // // // // // // // // //       ),);
// // // // // // // // // // // // // // // // // //     }
// // // // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // class HomeScreen extends StatefulWidget {
// // // // // // // // // // // // // // // // // // //   const HomeScreen({super.key});
// // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // //   State<HomeScreen> createState() => _HomeScreenState();
// // // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // class _HomeScreenState extends State<HomeScreen> {
// // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // // // // //     return DefaultTabController(
// // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // //         length: 4, child: Scaffold(
// // // // // // // // // // // // // // // // // // //       backgroundColor: Colors.grey,
// // // // // // // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // // // // // // //         actions: [
// // // // // // // // // // // // // // // // // // //           SizedBox(width: 10),
// // // // // // // // // // // // // // // // // // //           Icon(Icons.search),
// // // // // // // // // // // // // // // // // // //           SizedBox(width: 10),
// // // // // // // // // // // // // // // // // // //           PopupMenuButton(
// // // // // // // // // // // // // // // // // // //             child: Icon(Icons.more_vert_outlined),
// // // // // // // // // // // // // // // // // // //               itemBuilder: (context)=>[
// // // // // // // // // // // // // // // // // // //                 PopupMenuItem(
// // // // // // // // // // // // // // // // // // //                     child: Text('New-Group'),),
// // // // // // // // // // // // // // // // // // //                 PopupMenuItem(
// // // // // // // // // // // // // // // // // // //                   child: Text('Setting'),),
// // // // // // // // // // // // // // // // // // //                 PopupMenuItem(
// // // // // // // // // // // // // // // // // // //                   child: Text('Log-Out'),),
// // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // //               ],
// // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // //           )
// // // // // // // // // // // // // // // // // // //         ],
// // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // //         backgroundColor: Colors.teal,
// // // // // // // // // // // // // // // // // // //         bottom: TabBar(
// // // // // // // // // // // // // // // // // // //             tabs: [
// // // // // // // // // // // // // // // // // // //             Tab(
// // // // // // // // // // // // // // // // // // //             child: Icon(Icons.camera_alt_outlined),
// // // // // // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // // // // // // //                 child: Text("Chats"),
// // // // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // // // //       Tab(
// // // // // // // // // // // // // // // // // // //         child: Text("Calls"),
// // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // // // // // // //                 child: Text("Status"),
// // // // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // //             ],
// // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // //       body: TabBarView(
// // // // // // // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // // // // // // //             Text("Camera"),
// // // // // // // // // // // // // // // // // // //             Text('ChatsView'),
// // // // // // // // // // // // // // // // // // //             Text('Calls-History'),
// // // // // // // // // // // // // // // // // // //             Text('Statuses'),
// // // // // // // // // // // // // // // // // // //           ]),
// // // // // // // // // // // // // // // // // // //     ));
// // // // // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // class HomeScreen extends StatefulWidget {
// // // // // // // // // // // // // // // // // // // //   const HomeScreen({super.key});
// // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // // //   State<HomeScreen> createState() => _HomeScreenState();
// // // // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // class _HomeScreenState extends State<HomeScreen> {
// // // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // // // // // //     return DefaultTabController(
// // // // // // // // // // // // // // // // // // // //         length: 4, child: Scaffold(
// // // // // // // // // // // // // // // // // // // //       backgroundColor: Colors.white,
// // // // // // // // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // // // // // // // //         backgroundColor: Colors.green,
// // // // // // // // // // // // // // // // // // // //         actions: [
// // // // // // // // // // // // // // // // // // // //           SizedBox(width: 10),
// // // // // // // // // // // // // // // // // // // //           Icon(Icons.search),
// // // // // // // // // // // // // // // // // // // //           SizedBox(width: 10),
// // // // // // // // // // // // // // // // // // // //           Icon(Icons.more_vert_outlined),
// // // // // // // // // // // // // // // // // // // //         ],
// // // // // // // // // // // // // // // // // // // //         title: Text("WhatsApp"),
// // // // // // // // // // // // // // // // // // // //         bottom: TabBar(
// // // // // // // // // // // // // // // // // // // //             tabs: [
// // // // // // // // // // // // // // // // // // // //              Tab(
// // // // // // // // // // // // // // // // // // // //                child: Icon(Icons.camera_alt_outlined),
// // // // // // // // // // // // // // // // // // // //              ),
// // // // // // // // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // // // // // // // //                 child: Text("Chats"),
// // // // // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // // // // // // // //                 child: Text("Calls"),
// // // // // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // // // // //               Tab(
// // // // // // // // // // // // // // // // // // // //                 child: Text("Status"),
// // // // // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // // // // //             ]),
// // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // // //       body: TabBarView(
// // // // // // // // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // // // // // // // //             Text('Camera'),
// // // // // // // // // // // // // // // // // // // //             Text('Chats'),
// // // // // // // // // // // // // // // // // // // //             Text('Calls'),
// // // // // // // // // // // // // // // // // // // //             Text('Status'),
// // // // // // // // // // // // // // // // // // // //           ]),
// // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // //     ),
// // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // class HomeScreen extends StatefulWidget {
// // // // // // // // // // // // // // // // // // // // //   const HomeScreen({super.key});
// // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // // // //   State<HomeScreen> createState() => _HomeScreenState();
// // // // // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // class _HomeScreenState extends State<HomeScreen> {
// // // // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // // // // // // //     return DefaultTabController(
// // // // // // // // // // // // // // // // // // // // //       length: 4,
// // // // // // // // // // // // // // // // // // // // //       child: Scaffold(
// // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // //       backgroundColor: Colors.white,
// // // // // // // // // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // // // // // // // // //         backgroundColor: Colors.teal,
// // // // // // // // // // // // // // // // // // // // //         title: Text("Whatsapp"),
// // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // //         centerTitle: false,
// // // // // // // // // // // // // // // // // // // // //         actions: [
// // // // // // // // // // // // // // // // // // // // //           Icon(Icons.search),
// // // // // // // // // // // // // // // // // // // // //           SizedBox(width: 10),
// // // // // // // // // // // // // // // // // // // // //           Icon(Icons.more_vert_outlined)
// // // // // // // // // // // // // // // // // // // // //         ],
// // // // // // // // // // // // // // // // // // // // //         bottom: TabBar(
// // // // // // // // // // // // // // // // // // // // //             tabs: [
// // // // // // // // // // // // // // // // // // // // //               Icon(Icons.camera_alt_outlined),
// // // // // // // // // // // // // // // // // // // // //               Text('Chats'),
// // // // // // // // // // // // // // // // // // // // //               Text('Calls'),
// // // // // // // // // // // // // // // // // // // // //               Text('Status')
// // // // // // // // // // // // // // // // // // // // //             ],),
// // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // //         body: TabBarView(
// // // // // // // // // // // // // // // // // // // // //             children:
// // // // // // // // // // // // // // // // // // // // //         [
// // // // // // // // // // // // // // // // // // // // //           Text("Camera"),
// // // // // // // // // // // // // // // // // // // // //           Text('text'),
// // // // // // // // // // // // // // // // // // // // //           Text('Calls-history'),
// // // // // // // // // // // // // // // // // // // // //           Text('Statuses'),
// // // // // // // // // // // // // // // // // // // // //         ]),
// // // // // // // // // // // // // // // // // // // // //       ),);
// // // // // // // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // // import 'package:maheer_khan/screen_two.dart';
// // // // // // // // // // // // // // // // // // // // // // // import 'package:maheer_khan/screen_three.dart';
// // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // class HomeScreen extends StatefulWidget {
// // // // // // // // // // // // // // // // // // // // // //   static const String id="HomeScreen";
// // // // // // // // // // // // // // // // // // // // // //   const HomeScreen({super.key});
// // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // // // // //   State<HomeScreen> createState() => _HomeScreenState();
// // // // // // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // class _HomeScreenState extends State<HomeScreen> {
// // // // // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // // // // // // // // // //       backgroundColor: Colors.red,
// // // // // // // // // // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // // // // // // // // // //         title: Text("Home-Screen"),
// // // // // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // // // // //       drawer: Drawer(
// // // // // // // // // // // // // // // // // // // // // //         child: ListView(
// // // // // // // // // // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // // // // // // // // // //             UserAccountsDrawerHeader(
// // // // // // // // // // // // // // // // // // // // // //                 decoration: BoxDecoration(
// // // // // // // // // // // // // // // // // // // // // //                   color: Colors.red,
// // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // //                 ),
// // // // // // // // // // // // // // // // // // // // // //             currentAccountPicture: CircleAvatar(
// // // // // // // // // // // // // // // // // // // // // //               backgroundImage: AssetImage('assets/image1'),
// // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // // // // // // // // //             accountName: Text('Name') ,
// // // // // // // // // // // // // // // // // // // // // //               accountEmail: Text("Name@gmail.com"),
// // // // // // // // // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // // // // // // // // //             ListTile(
// // // // // // // // // // // // // // // // // // // // // //               leading: Icon(Icons.home),
// // // // // // // // // // // // // // // // // // // // // //               title: Text('Home'),
// // // // // // // // // // // // // // // // // // // // // //               onTap: ()
// // // // // // // // // // // // // // // // // // // // // //               {
// // // // // // // // // // // // // // // // // // // // // //                 Navigator.pushNamed(context, HomeScreen.id);
// // // // // // // // // // // // // // // // // // // // // //               },
// // // // // // // // // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // // // // // // // // //             ListTile(
// // // // // // // // // // // // // // // // // // // // // //               leading: Icon(Icons.next_plan_outlined),
// // // // // // // // // // // // // // // // // // // // // //               title: Text('Second-Screen'),
// // // // // // // // // // // // // // // // // // // // // //               onTap: ()
// // // // // // // // // // // // // // // // // // // // // //               {
// // // // // // // // // // // // // // // // // // // // // //                 Navigator.pushNamed(context, ScreenTwo.id);
// // // // // // // // // // // // // // // // // // // // // //               },
// // // // // // // // // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // // // // //       body: Center(
// // // // // // // // // // // // // // // // // // // // // //         child: Column(
// // // // // // // // // // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // // // // // // // // // //             Center(
// // // // // // // // // // // // // // // // // // // // // //               child: TextButton(
// // // // // // // // // // // // // // // // // // // // // //                   onPressed: ()
// // // // // // // // // // // // // // // // // // // // // //               {
// // // // // // // // // // // // // // // // // // // // // //                 Navigator.pushNamed(context, ScreenTwo.id);
// // // // // // // // // // // // // // // // // // // // // //               },
// // // // // // // // // // // // // // // // // // // // // //               child: Text('Click to Screen-Two'),),
// // // // // // // // // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // // class HomeScreen extends StatefulWidget {
// // // // // // // // // // // // // // // // // // // // // // //   static const String id="HomeScreen";
// // // // // // // // // // // // // // // // // // // // // // //   const HomeScreen({super.key});
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // // // // // //   State<HomeScreen> createState() => _HomeScreenState();
// // // // // // // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // // class _HomeScreenState extends State<HomeScreen> {
// // // // // // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // // // // // // // // // // //       backgroundColor: Colors.teal,
// // // // // // // // // // // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // // // // // // // // // // //         backgroundColor: Colors.white,
// // // // // // // // // // // // // // // // // // // // // // //         title: Text("Home-Screen"),
// // // // // // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // // // // // //       body: Center(
// // // // // // // // // // // // // // // // // // // // // // //         child: Column(
// // // // // // // // // // // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // // // // // // // // // // //             Center(
// // // // // // // // // // // // // // // // // // // // // // //               child: TextButton(
// // // // // // // // // // // // // // // // // // // // // // //                   onPressed: ()
// // // // // // // // // // // // // // // // // // // // // // //               {
// // // // // // // // // // // // // // // // // // // // // // //                 Navigator.pushNamed(context, ScreenTwo.id);
// // // // // // // // // // // // // // // // // // // // // // //               },
// // // // // // // // // // // // // // // // // // // // // // //               child: Text('Next to ScreenTwo'),),
// // // // // // // // // // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // // // // // // // class HomeScreen extends StatefulWidget {
// // // // // // // // // // // // // // // // // // // // // // //   static const String id="HomeScreen";
// // // // // // // // // // // // // // // // // // // // // // //   const HomeScreen({super.key});
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // // // // // //   State<HomeScreen> createState() => _HomeScreenState();
// // // // // // // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // // class _HomeScreenState extends State<HomeScreen> {
// // // // // // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // // // // // // // // // // //       backgroundColor: Colors.cyanAccent,
// // // // // // // // // // // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // // // // // // // // // // //         title: Text("Home-Screen"),
// // // // // // // // // // // // // // // // // // // // // // //         backgroundColor: Colors.yellowAccent,
// // // // // // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // // // // // //       drawer: Drawer(
// // // // // // // // // // // // // // // // // // // // // // //         child: ListView(
// // // // // // // // // // // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // // // // // // // // // // //             UserAccountsDrawerHeader(
// // // // // // // // // // // // // // // // // // // // // // //               decoration: BoxDecoration(
// // // // // // // // // // // // // // // // // // // // // // //                 color: Colors.teal,
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // // // // // // // //               currentAccountPicture: CircleAvatar(
// // // // // // // // // // // // // // // // // // // // // // //                 backgroundImage: AssetImage('assets/dp.jpg'),
// // // // // // // // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // // // // // // // //               accountName: Text("MaanKhanX"),
// // // // // // // // // // // // // // // // // // // // // // //               accountEmail: TextFormField(
// // // // // // // // // // // // // // // // // // // // // // //                 decoration: InputDecoration(
// // // // // // // // // // // // // // // // // // // // // // //                  hintText: 'MaanKhanx@gmail.com',
// // // // // // // // // // // // // // // // // // // // // // //                   prefixIcon: Icon(Icons.mail_outline_sharp),
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // //                     ),
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // // // // // // // // // // //                 ),
// // // // // // // // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // //       body: Center(
// // // // // // // // // // // // // // // // // // // // // // //         child: Column(
// // // // // // // // // // // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // // // // // // // // // // //             Center(
// // // // // // // // // // // // // // // // // // // // // // //               child: TextButton(
// // // // // // // // // // // // // // // // // // // // // // //                   onPressed: ()
// // // // // // // // // // // // // // // // // // // // // // //               {
// // // // // // // // // // // // // // // // // // // // // // //                 Navigator.pushNamed(
// // // // // // // // // // // // // // // // // // // // // // //                     context, ScreenTwo.id);
// // // // // // // // // // // // // // // // // // // // // // //               },
// // // // // // // // // // // // // // // // // // // // // // //               child: Text("Press to next screen"),),
// // // // // // // // // // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // // // // // // // // // //              ],
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // //     ),),);
// // // // // // // // // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // // class HomeScreen extends StatefulWidget {
// // // // // // // // // // // // // // // // // // // // // // //   static const String id='HomeScreen';
// // // // // // // // // // // // // // // // // // // // // // //   const HomeScreen({super.key});
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // // // // // //   State<HomeScreen> createState() => _HomeScreenState();
// // // // // // // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // // class _HomeScreenState extends State<HomeScreen> {
// // // // // // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // // // // // // // // // // //       backgroundColor: Colors.yellowAccent,
// // // // // // // // // // // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // // // // // // // // // // //         title: Text("Home-Screen"),
// // // // // // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // // // // // //       drawer: Drawer(
// // // // // // // // // // // // // // // // // // // // // // //         child: ListView(
// // // // // // // // // // // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // // // // // // // // // // //             UserAccountsDrawerHeader(
// // // // // // // // // // // // // // // // // // // // // // //               decoration: BoxDecoration(
// // // // // // // // // // // // // // // // // // // // // // //                 color: Colors.greenAccent,
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // // // // // // // //               currentAccountPicture: CircleAvatar(
// // // // // // // // // // // // // // // // // // // // // // //                 // backgroundColor: Colors.teal,
// // // // // // // // // // // // // // // // // // // // // // //                 backgroundImage: AssetImage('assets/image1.jpg'),
// // // // // // // // // // // // // // // // // // // // // // //               ),
// // // // // // // // // // // // // // // // // // // // // // //               accountName: Text("Maan-khan"),
// // // // // // // // // // // // // // // // // // // // // // //               accountEmail: Text('Maan@gmail.com'),
// // // // // // // // // // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // // // // // // // // // //             ListTile(
// // // // // // // // // // // // // // // // // // // // // // //               leading: Icon(Icons.home),
// // // // // // // // // // // // // // // // // // // // // // //               title: Text("Home"),
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // //               onTap: ()
// // // // // // // // // // // // // // // // // // // // // // //               {
// // // // // // // // // // // // // // // // // // // // // // //                 Navigator.pushNamed(context, HomeScreen.id);
// // // // // // // // // // // // // // // // // // // // // // //               },
// // // // // // // // // // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // // // // // //       body: Center(
// // // // // // // // // // // // // // // // // // // // // // //         child: Column(
// // // // // // // // // // // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // // // // // // // // // // //             Center(
// // // // // // // // // // // // // // // // // // // // // // //               child: TextButton(
// // // // // // // // // // // // // // // // // // // // // // //                   onPressed: ()
// // // // // // // // // // // // // // // // // // // // // // //               {
// // // // // // // // // // // // // // // // // // // // // // //                 Navigator.pushNamed(context, ScreenTwo.id);
// // // // // // // // // // // // // // // // // // // // // // //               },
// // // // // // // // // // // // // // // // // // // // // // //               child: Icon(Icons.navigate_next, size: 76),),
// // // // // // // // // // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // // class HomeScreen extends StatefulWidget {
// // // // // // // // // // // // // // // // // // // // // // //   static const String id ="HomeScreen";
// // // // // // // // // // // // // // // // // // // // // // //   const HomeScreen({super.key});
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // // // // // //   State<HomeScreen> createState() => _HomeScreenState();
// // // // // // // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // // class _HomeScreenState extends State<HomeScreen> {
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // // // // // // // // // // //       backgroundColor: Colors.red,
// // // // // // // // // // // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // // // // // // // // // // //         title: Text('Home-Screen'),
// // // // // // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // // // // // //       body: Center(
// // // // // // // // // // // // // // // // // // // // // // //         child: Column(
// // // // // // // // // // // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // // // // // // // // // // //             Center(
// // // // // // // // // // // // // // // // // // // // // // //               child: TextButton(
// // // // // // // // // // // // // // // // // // // // // // //                   onPressed:  ()
// // // // // // // // // // // // // // // // // // // // // // //               {
// // // // // // // // // // // // // // // // // // // // // // //                 Navigator.pushNamed(context, ScreenTwo.id);
// // // // // // // // // // // // // // // // // // // // // // //               },
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // //               child: Text("Next to Screen-Two"),),
// // // // // // // // // // // // // // // // // // // // // // //             )
// // // // // // // // // // // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // // class HomeScreen extends StatefulWidget {
// // // // // // // // // // // // // // // // // // // // // // //   const HomeScreen({super.key});
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // // // // // //   State<HomeScreen> createState() => _HomeScreenState();
// // // // // // // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // // class _HomeScreenState extends State<HomeScreen> {
// // // // // // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // // // // // // // // // // //       backgroundColor: Colors.white,
// // // // // // // // // // // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // // // // // // // // // // //         title: Text("Home-Screen"),
// // // // // // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // // // // // //       body: Column(
// // // // // // // // // // // // // // // // // // // // // // //         children: [
// // // // // // // // // // // // // // // // // // // // // // //           Center(
// // // // // // // // // // // // // // // // // // // // // // //             child: TextButton(
// // // // // // // // // // // // // // // // // // // // // // //                 onPressed:()
// // // // // // // // // // // // // // // // // // // // // // //             {
// // // // // // // // // // // // // // // // // // // // // // //               Navigator.push
// // // // // // // // // // // // // // // // // // // // // // //                 (context, MaterialPageRoute(
// // // // // // // // // // // // // // // // // // // // // // //                   builder: (context)=>ScreenTwo()),);
// // // // // // // // // // // // // // // // // // // // // // //             },
// // // // // // // // // // // // // // // // // // // // // // //             child: Text("Toward next (ScreenTwo)"),
// // // // // // // // // // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // // // // // // // // // //           )
// // // // // // // // // // // // // // // // // // // // // // //         ],
// // // // // // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // // import 'package:maheer_khan/screen_two.dart';
// // // // // // // // // // // // // // // // // // // // // // // class HomeScreen extends StatefulWidget {
// // // // // // // // // // // // // // // // // // // // // // //   const HomeScreen({super.key});
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // // // // // //   State<HomeScreen> createState() => _HomeScreenState();
// // // // // // // // // // // // // // // // // // // // // // // }
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // // class _HomeScreenState extends State<HomeScreen> {
// // // // // // // // // // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // // // // // // // // // // //       backgroundColor: Colors.lightGreen,
// // // // // // // // // // // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // // // // // // // // // // //         title: Text('HomeScreen'),
// // // // // // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // // // // // //       body: Center(
// // // // // // // // // // // // // // // // // // // // // // //         child: Column(
// // // // // // // // // // // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // // // // // // // // // // //             Center(
// // // // // // // // // // // // // // // // // // // // // // //               child: TextButton(
// // // // // // // // // // // // // // // // // // // // // // //                   onPressed:(){
// // // // // // // // // // // // // // // // // // // // // // //                     Navigator.push(
// // // // // // // // // // // // // // // // // // // // // // //                       context, MaterialPageRoute(
// // // // // // // // // // // // // // // // // // // // // // //                         builder: (context)=>ScreenTwo() ),);
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // //                   } ,
// // // // // // // // // // // // // // // // // // // // // // //                   child: Text("Go to ScreenTwo"),
// // // // // // // // // // // // // // // // // // // // // // //                   ),
// // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // //             )
// // // // // // // // // // // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // // // // // // // // // }
