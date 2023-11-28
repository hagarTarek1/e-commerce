import 'package:e_commerce/thirdpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50,left: 25),
            child: Row(children: [
              Text("Sign Up", style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize:35,
                    fontWeight: FontWeight.bold),),),
              SizedBox(width: 35,),
              InkWell( onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
              },
                child: Text("Forget Pass", style: GoogleFonts.actor(
                  textStyle: TextStyle(
                      color: Colors.black38,
                      fontSize:35,
                      fontWeight: FontWeight.bold),),),
              ),

            ],),
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
                  prefixIcon: Icon(Icons.email_outlined,size: 30,color: Colors.black54,),
                  label: Text(" E-MAIL"),
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
                  prefixIcon: Icon(Icons.person_outline_outlined,size: 30,color: Colors.black54),
                  label: Text("UserName"),
                  labelStyle: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),),

              ),



            ],),),
    Container(
    margin: EdgeInsets.only(top: 20,right: 20,left: 20),
    height: 70,
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(15)
    ),
    child:
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

          ),),
          SizedBox(height: 30,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor:
              Colors.red[400],
                  elevation: 5,
                  maximumSize: Size(350, 600),
                  minimumSize: Size(280, 60)
              ),
              onPressed: (){}, child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 120),
              child: Text('Sign up',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),),
            ),
            Spacer(),
            CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: Icon(Icons.arrow_forward_ios,color: Colors.red[700],size: 25,))

          ],)),
          SizedBox(height: 60,),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("By continuing you agree to our",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(fontSize: 12,height: 1,color: Colors.black54,fontWeight: FontWeight.bold),)),
              SizedBox(width: 5,),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  minimumSize: Size(10, 10),
                  maximumSize: Size(double.infinity, 20),
                ),
                onPressed: (){}, child: Text("Terms of service",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(color: Colors.red[700],fontSize: 12,height: 1,fontWeight: FontWeight.w600),),),),
            ],),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 16),
              Text("And",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(fontSize: 12,color: Colors.black54,fontWeight: FontWeight.bold),)),
              SizedBox(width: 5,),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  minimumSize: Size(10, 10),
                  maximumSize: Size(double.infinity, 20),
                ),
                onPressed: (){}, child: Text("Privacy policy",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(color:Colors.red[700],fontSize: 12,fontWeight: FontWeight.w600),),),),
            ],),

        ],),);
  }
}
