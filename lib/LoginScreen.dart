import 'package:ecommerce/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'FirstScreen.dart';
import 'SignUp.dart';
import 'colors.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        
        children: [
          SizedBox(
            height: 80,

          ),
          Center(
            child: Text(
              'تسجيل الدخول ',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      )),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 70,
                      ),
               Padding(
                   padding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                   child: TextFormField(

                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(width: 3, color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white,

                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              hintText: 'البريد الاليكتروني',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                     validator: (value) {
                       if (value!.isEmpty) {
                         return 'أدخل كلمة البريد  ';
                       }
                       return null;
                     },
                   ),
               ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                        child: TextFormField(
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(width: 3, color: Colors.black),
                            ),
                            hintText: 'كلمة المرور',

                                enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                color: Colors.white
                                ),
                                  borderRadius: BorderRadius.circular(30),

                                ),
                                border: OutlineInputBorder(

                              borderSide: BorderSide(color: Colors.black, width: 2.0),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'أدخل كلمة المرور  ';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SplashScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary:Colors.black ,
                        ),

                        child: Text('دخول'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(onPressed: (){},
                            child: Text('نسيت كلمة المرور ؟', style: TextStyle(color: Colors.black38),),
                          ),
                          TextButton(onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SignUp()),
                            );
                          },
                            child: Text('إنشاء حساب', style: TextStyle(color: Colors.black54),),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
