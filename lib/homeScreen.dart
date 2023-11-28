
import 'package:e_commerce/firstpage.dart';
import 'package:e_commerce/secondpage.dart';
import 'package:e_commerce/thirdpage.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController controller=PageController();
  List<Widget> list=<Widget>[
   LoginScreen(),
    Signin(),
    ForgetPassword()];
  int current=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: PageView(
        children:
        list,
        scrollDirection: Axis.horizontal,
         physics: BouncingScrollPhysics(),
        controller: controller,
        onPageChanged: (num){
          setState(() {
            current=num;
          });
        },
      ),
    );
  }
}
