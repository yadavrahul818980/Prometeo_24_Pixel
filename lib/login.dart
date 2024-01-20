import 'package:flutter/material.dart';
import 'package:trendify/Utilities.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final sheight=MediaQuery.of(context).size.height;
    final swidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/Rectangle 1.png',scale: 4,),

            SizedBox(height: sheight*0.035,),

            Text('Let`s you in',style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w400
            ),),

            SizedBox(height: sheight*0.035,),

            SignUpOptions(context,sheight*0.08, swidth, 'assets/Apple logo.png', 'Continue with Apple'),

            SizedBox(height: sheight*0.03,),

            SignUpOptions(context,sheight*0.08, swidth, 'assets/Google logo.png', 'Continue with Google'),

            SizedBox(height: sheight*0.03,),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      thickness: 1.25,// Color of the divider line
                    ),
                  ),

                  SizedBox(width: swidth*0.02,),

                  Text('Or sign in with',style: TextStyle(
                    fontSize: 17
                  ),),

                  SizedBox(width: swidth*0.02,),

                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      thickness: 1.25,// Color of the divider line
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: sheight*0.03,),

    Padding(
    padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
    child: Container(
    height:sheight*0.08,
    width: swidth,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    border: Border.all(
    color: Colors.black,
    width: 2,
    )

    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text('Sign in with Password' ,style: const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold
    ),),
    ],
    ),
      ),
      ),

        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text('Don`t have an account?' ,style: const TextStyle(
        //       fontSize: 18,
        //       fontWeight: FontWeight.w500,
        //     ),),
        //
        //     GestureDetector(
        //       onTap: (){
        //         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> page));
        //       },
        //       child:  Padding(
        //         padding:  EdgeInsets.all(6.0),
        //         child: Text('Sign Up' ,style: const TextStyle(
        //           color: Color(0xff50A5AE),
        //           fontSize: 18,
        //         ),
        //         ),
        //       ),
        //     ),
        //   ],
        // );
    ],
        ),),);
  }
}