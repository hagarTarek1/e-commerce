import 'package:e_commerce/homepage.dart';
import 'package:e_commerce/thirdpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50,left: 25),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                    Text("Log In", style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                color: Colors.black,
                fontSize:35,
                fontWeight: FontWeight.bold),),),
                SizedBox(width: 32,),
                Text("Sign Up", style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.black38,
                      fontSize:35,
                      fontWeight: FontWeight.bold),),),
                SizedBox(width: 32,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
                  },
                  child: Text("Forget password", style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.black38,
                        fontSize:35,
                        fontWeight: FontWeight.bold),),),
                ),
              ],),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40,right: 20,left: 20),
            height: 150,
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15)
          ),
          child: Column(children: [
            TextFormField(

              scrollPadding: EdgeInsets.all(5),
              decoration: InputDecoration(border: InputBorder.none,
              prefixIcon: Icon(Icons.person_outline_outlined,size: 30,color: Colors.black54,),
              label: Text("USERNAME / E-MAIL"),
              labelStyle: GoogleFonts.poppins(
                  textStyle: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
          ),),),
            Divider(
              color: Colors.grey[100],
            ),
            TextFormField(
              decoration: InputDecoration(border: InputBorder.none,
                  prefixIcon: Icon(Icons.lock_outline,size: 30,color: Colors.black54),
                label: Text("PASSWORD"),
                labelStyle: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),),

            ),

          ],),),
          SizedBox(height: 30,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor:
            Colors.red[400],
              elevation: 5,
              maximumSize: Size(350, 600),
              minimumSize: Size(280, 60)
            ),
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              }, child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 120),
              child: Text('LOG IN',
                  style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
                  ),),
            ),
            Spacer(),
            CircleAvatar(
              radius: 16,
              backgroundColor: Colors.white,
                child: Icon(Icons.arrow_forward_ios,color: Colors.red[700],size: 25,))

          ],)),
          SizedBox(height: 60,),
          Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Don't have an account? swipe right to ",
          style: GoogleFonts.poppins(
          textStyle: TextStyle(
          fontSize: 12,
          height: 3,
          color: Colors.black54,
          fontWeight: FontWeight.bold),
          )),
          SizedBox(width: 5,),
          Text("create ",
          style: GoogleFonts.poppins(
      textStyle: TextStyle(
        color: Colors.red[700],
          fontSize: 12,
          height: 1,
          fontWeight: FontWeight.bold),
          )), ],
      ),
          Text(" a new account",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.red[700],
                    fontSize: 12,
                    height: 1,
                    fontWeight: FontWeight.bold),
              )),

          ],),);
  }
}
