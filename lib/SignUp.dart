import 'package:ecommerce/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'FirstScreen.dart';
import 'colors.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);


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
          Center(
            child: Text(
              'إنشاء حساب ',
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
                Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                      child: TextField(
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
                          hintText: 'الإسم كامل',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),                   Padding(
                      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                      child: TextField(
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
                          hintText: 'رقم الهاتف',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                      child: TextField(
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
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                      child: TextField(
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
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('بإنشاء حساب أنت تقر بموافقتك علي شروط الإستخدام' , style: TextStyle(fontSize: 12),),
                    SizedBox(
                      height:7,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const FisrtScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary:Colors.black ,
                      ),

                      child: Text('إنشاء حساب'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
